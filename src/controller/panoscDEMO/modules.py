"""Python wrapper around environment modules ("module load")
"""
import os
from subprocess import run, PIPE

def load(*args):
    cmd = ['modulecmd', 'python', 'load'] + list(args)
    res = run(cmd, stdout=PIPE, stderr=PIPE)
    txt = res.stderr.decode('utf-8', 'replace').strip()
    if txt:
        print(txt)

    res.check_returncode()
    
    code = res.stdout.decode('utf-8').strip()
    if code:
        exec(code, {'os': os})
