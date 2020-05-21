from extra_geom.detectors import DetectorGeometryBase, GeometryFragment
from cfelpyutils.crystfel_utils import load_crystfel_geometry

class CrystfelGeom(DetectorGeometryBase):
    """CrystFEL geometry for a general detector
    
    This assumes that all panels have the same number & size of pixels.
    For now, it treats each panel as an indepedent module, so the data
    shape should be (n_panels, panel_slow_scan_px, panel_fast_scan_px).
    The panels' order should match the order they are in the geometry file.
    
    This may move into EXtra-geom later.
    """
    n_tiles_per_module = 1
    
    def __init__(self, geom_dict, filename='No file'):
        res = set()
        slowscan_px, fastscan_px = set(), set()
        modules = []

        for panname, panel in geom_dict['panels'].items():
            res.add(panel['res'])
            
            assert panel['min_ss'] == 0, panel['min_ss']
            assert panel['min_fs'] == 0, panel['min_fs']
            frag = GeometryFragment.from_panel_dict(panel)
            modules.append([frag])
            slowscan_px.add(frag.ss_pixels)
            fastscan_px.add(frag.fs_pixels)
    
        assert len(res) == 1, res
        assert len(slowscan_px) == 1, slowscan_px
        assert len(fastscan_px) == 1, fastscan_px
        
        super().__init__(modules, filename=filename)
        
        self.pixel_size = 1 / res.pop()
        self.frag_ss_pixels = slowscan_px.pop()
        self.frag_fs_pixels = fastscan_px.pop()
        self.n_modules = len(modules)
        self.expected_data_shape = (self.n_modules, self.frag_ss_pixels, self.frag_fs_pixels)

    @classmethod
    def from_crystfel_geom(cls, filename):
        geom_dict = load_crystfel_geometry(filename)
        return cls(geom_dict, filename)
        
    @staticmethod
    def split_tiles(module_data):
        """Split data from a detector module into tiles.

        Must be implemented in subclasses.
        """
        return [module_data]
    
    @classmethod
    def _tile_slice(cls, tileno):
        """Implement in subclass: which part of module array each tile is.
        """
        assert tileno == 0, tileno
        return slice(0, self.frag_ss_pixels), slice(0, self.frag_fs_pixels)

    def _module_coords_to_tile(self, slow_scan, fast_scan):
        """Implement in subclass: positions in module to tile numbers & pos in tile
        """
        return 0, slow_scan, fast_scan
