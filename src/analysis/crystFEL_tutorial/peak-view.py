#!/gpfs/exfel/sw/software/xfel_anaconda3/1.1/bin/python

import os

print('This tool will write out peaks of a given event and display')
print('them as overlay with the corresponding image-frame')

valid_file = False
while valid_file == False:
    file_name = input('CrystFEL stream file > ')
    if os.path.exists(file_name):
        valid_file = True

target_frame = input('Frame # to check > ')
in_frame = False
in_peaks = False
peak_lines = []

with open(file_name) as f:
    for ln in f:
        if 'Event:' in ln and ln.split()[-1] == ('//{}'.format(target_frame)):
            in_frame = True
        if in_frame and 'Peaks from peak search' in ln:
            in_peaks = True
            continue
        if in_frame and 'End of peak' in ln:
            peak_lines.append(ln)
            break
        if in_peaks:
            peak_lines.append(ln)

with open('list.tmp', 'w') as f:
    for ln in peak_lines:
        f.write(ln)

os.system('hdfsee xmpl_2_vds.cxi -g agipd_mar18_v22.geom --peak-overlay=list.tmp --event=//{}'.format(target_frame))

