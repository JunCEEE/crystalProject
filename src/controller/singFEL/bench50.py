from timeit import default_timer as timer
import os,shutil
import SimEx
from SimEx import *

data_path = '../../data/simulation/'
prop_path = 'prop/prop_out_9fs_5keV_from_CHY.h5'
os.chdir(data_path)
os.getcwd()

diff_out = 'diffr50'
dirs_to_remove=[diff_out]
files_to_remove=[diff_out+'.h5']
for d in dirs_to_remove:
    if os.path.isdir(d):
        shutil.rmtree(d)
for f in files_to_remove:
    if os.path.isfile(f):
        os.remove(f)

panel = DetectorPanel(ranges={"fast_scan_min" : 0, "fast_scan_max" : 999,
                              "slow_scan_min" : 0, "slow_scan_max" : 999},
                      pixel_size=220.0e-6*meter,
                      energy_response=1.0/electronvolt,
                      distance_from_interaction_plane=0.13*meter,
                      corners={"x" : -500, "y": -500},
                      saturation_adu=1.e6,
                      )

detector_geometry = DetectorGeometry(panels=panel,)

diffraction_parameters = SingFELPhotonDiffractorParameters(
                                               uniform_rotation=True,
                                               calculate_Compton=True,
                                               slice_interval=100,
                                               number_of_slices=100,
                                               number_of_diffraction_patterns=50,
                                               detector_geometry=detector_geometry,
                                               #forced_mpi_command='mpirun --use-hwthread-cpus',
                                               #forced_mpi_command='mpirun -np 36',
                                               #forced_mpi_command='mpirun -np 1',
                                              )

diffractor = SingFELPhotonDiffractor(parameters=diffraction_parameters,
                                     input_path='pmi',
                                     output_path=diff_out)

diffractor.backengine()
diffractor.saveH5()
