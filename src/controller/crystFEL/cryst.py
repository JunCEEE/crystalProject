from timeit import default_timer as timer
import os,shutil
from SimEx import *

data_path = '../../../data/simulation/'
os.chdir(data_path)
os.getcwd()

beamParam = PhotonBeamParameters(
    photon_energy = 4972.0 * electronvolt,  # photon energy in eV
    beam_diameter_fwhm=130e-9 * meter,      # focus diameter in m
    pulse_energy=0.45e-3 * joule,           # pulse energy in J
    photon_energy_relative_bandwidth=0.003, # relative bandwidth dE/E
    divergence=0.0 * radian,                # Beam divergence in rad
    photon_energy_spectrum_type='tophat',   # Spectrum type. Acceptable values are "tophat", "SASE", and "twocolor")
    )

diffParam = CrystFELPhotonDiffractorParameters(
    sample='3WUL.pdb',                    # Looks up pdb file in cwd, if not found, queries from RCSB pdb mirror.
    uniform_rotation=True,                # Apply random rotation
    number_of_diffraction_patterns=10,     #
    powder=False,                         # Set to True to create a virtual powder diffraction pattern (unested)
    intensities_file=None,                # File that contains reflection intensities. If set to none, use uniform intensity distribution
    crystal_size_range=[1e-7,1e-7],       # Range ([min,max]) in units of metres of crystal size.
    poissonize=False,                     # Set to True to add Poisson noise.
    number_of_background_photons=0,       # Change number to add uniformly distributed background photons.
    suppress_fringes=False,               # Set to True to suppress side maxima between reflection peaks.
    beam_parameters=beamParam,                 # Beam parameters object from above
    detector_geometry='tmp.geom',      # External file that contains the detector geometry in CrystFEL notation.
    )

diffractor = CrystFELPhotonDiffractor(
    parameters=diffParam,      
    output_path="xstal/xstal_diffr")
diffractor.backengine()
diffractor.saveH5()
