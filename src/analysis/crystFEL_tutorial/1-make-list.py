#!/gpfs/exfel/sw/software/xfel_anaconda3/1.1/bin/python

import h5py
import numpy as np
import os

if not os.path.exists('xmpl_2_vds.cxi'):
    print('Please create a virtual data set first')
    exit(0)

print('This tool will create a frame list as input for CrystFEL')

frame_0 = -1
n_frames = 0

while frame_0 < 0:
    ustr = input('First frame to take > ')
    try:
        frame_0 = int(ustr)
    except ValueError:
        continue

while n_frames == 0:
    ustr = input('Number of frames    > ')
    try:
        n_frames = int(ustr)
    except ValueError:
        continue

with h5py.File('xmpl_2_vds.cxi', 'r') as h5:
    all_ids = np.array(h5['entry_1/experiment_identifier'])

print(' requested frame indices: {} to {}\n'.format(frame_0, frame_0 + n_frames - 1))
event_indices = np.arange(all_ids.shape[0])[frame_0:(frame_0 + n_frames)]
print(' writing', len(event_indices), 'frame (event) indices')

with open('xmpl_2_frames.lst', 'w') as listfile:
    for ix in event_indices:
        listfile.write('xmpl_2_vds.cxi //{}\n' .format(ix))

