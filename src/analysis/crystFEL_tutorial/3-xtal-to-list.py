#!/gpfs/exfel/sw/software/xfel_anaconda3/1.1/bin/python

import os

LYSO = [(7.5, 8.4), (7.5, 8.4), (3.4, 4.0), (88, 92), (88, 92), (88, 92)]
#LYSO = [(3.4, 4.0), (7.5, 8.4), (7.5, 8.4), (88, 92), (88, 92), (88, 92)]
def reasonable_cell(parms):
    for i in range(6):
        if parms[i] < LYSO[i][0]: return False
        if parms[i] > LYSO[i][1]: return False
    return True

print('This tool will write out frames containing reasonable crystals')

valid = False
while valid == False:
    fn = input('CrystFEL stream file to parse > ')
    if not os.path.exists(fn):
        print('File with provided name cannot be opened')
    else:
        valid = True

hit_list = []
with open(fn) as f:
    for ln in f:
        if 'Event:' in ln:
            event = ln.split()[-1]   # includes '//'
        if 'Cell parameters' in ln:
            cell_parms = [float(x) for x in (ln.split()[2:5] + ln.split()[6:9])]
            if reasonable_cell(cell_parms):
                hit_list.append('xmpl_2_vds.cxi {}'.format(event))

print(len(hit_list), 'reasonable crystals found')

out_file = input('output file name to which hit-frames shall be written > ')

with open(out_file, 'w') as f:
   for ln in hit_list:
        f.write('{}\n'.format(ln))

