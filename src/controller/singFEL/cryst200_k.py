from timeit import default_timer as timer
import os,shutil
from SimEx import *

data_path = '../../../data/simulation/'
out_path = "singfel_200_k"
# Remove previous results
shutil.rmtree(data_path+out_path,True)
os.chdir(data_path)
os.getcwd()

beamParam = PhotonBeamParameters(
    photon_energy = 4972.0 * electronvolt,  # photon energy in eV
    beam_diameter_fwhm=130e-9 * meter,      # focus diameter in m
    pulse_energy=45 * joule,           # pulse energy in J
    photon_energy_relative_bandwidth=0.003, # relative bandwidth dE/E
    divergence=0.0 * radian,                # Beam divergence in rad
    photon_energy_spectrum_type='tophat',   # Spectrum type. Acceptable values are "tophat", "SASE", and "twocolor")
    )

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
                                               number_of_diffraction_patterns=200,
                                               detector_geometry=detector_geometry,
                                               beam_parameters=beamParam,
                                               #forced_mpi_command='mpirun --use-hwthread-cpus',
                                               forced_mpi_command='mpirun -np 40',
                                              )

#diffParam = CrystFELPhotonDiffractorParameters(
    #sample='3WUL.pdb',                    # Looks up pdb file in cwd, if not found, queries from RCSB pdb mirror.
    #uniform_rotation=True,                # Apply random rotation
    #number_of_diffraction_patterns=5,     #
    #powder=False,                         # Set to True to create a virtual powder diffraction pattern (unested)
    #intensities_file=None,                # File that contains reflection intensities. If set to none, use uniform intensity distribution
    #crystal_size_range=[1e-7,1e-7],       # Range ([min,max]) in units of metres of crystal size.
    #poissonize=False,                     # Set to True to add Poisson noise.
    #number_of_background_photons=0,       # Change number to add uniformly distributed background photons.
    #suppress_fringes=False,               # Set to True to suppress side maxima between reflection peaks.
    #beam_parameters=beamParam,                 # Beam parameters object from above
    #detector_geometry='tmp.geom',      # External file that contains the detector geometry in CrystFEL notation.
    #)

diffractor = SingFELPhotonDiffractor(parameters=diffraction_parameters,
                                     input_path='3WUL.pdb',
                                     output_path=out_path)

start = timer()

diffractor.backengine()
diffractor.saveH5()

end = timer()
print(end - start,'s') # Time in seconds
