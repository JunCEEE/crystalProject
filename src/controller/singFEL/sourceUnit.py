import os
import numpy as np
import h5py
import matplotlib.pyplot as plt

source_path = '/gpfs/exfel/data/user/juncheng/crystalProject/data/simulation/source'
source_name = 'g8_0kev.h5'
dest_name = source_name
#dest_name = os.path.basename(source_name)+'-t.h5'
os.chdir(source_path)
#copyfile(source_name, dest_name)


def checkNval(source_name): 
    with h5py.File(source_name,'r') as f:
        print ('arrEhor Shape:', f['data/arrEhor'].shape)
        print ('nVal =',f['params/nval'][...])
        f.close()

def figProj(data,extent):
    # extent = [xMin, xMax, yMin, yMax]
    figure = plt.figure(figsize=(10, 10), dpi=100)
    plt.axis('tight')
    profile = plt.subplot2grid((3, 3), (1, 0), colspan=2, rowspan=2)
    profile.imshow(data, extent=extent)

    x = np.linspace(extent[0],extent[1],data.shape[1])
    y = np.linspace(extent[2],extent[3],data.shape[0])

    # x-projection plots above main plot.
    x_projection = plt.subplot2grid((3, 3), (0, 0), sharex=profile, colspan=2)
    x_projection.plot(x, np.sum(data,axis=0), label='x projection')
    # y-projection plot right of main plot.
    y_projection = plt.subplot2grid((3, 3), (1, 2), rowspan=2, sharey=profile)
    y_projection.plot(np.sum(data,axis=0), y, label='y projection')
    plt.minorticks_off()
    profile.set_xlim([extent[0], extent[1]])
    profile.set_ylim([extent[2], extent[3]])

    return (figure,profile,x_projection,y_projection)


#%%
# Create .h5 file
with h5py.File(dest_name, 'a') as f:
    try: 
        del f['/params/wEFieldUnit']
    except:
        pass
    dt = h5py.string_dtype(encoding='ascii')
    f.create_dataset('/params/wEFieldUnit',(1,), dtype= dt , data= 'sqrt(W/mm^2)')
    f.flush()
    f.close()
