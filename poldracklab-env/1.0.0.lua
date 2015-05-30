setenv('test','test')
whatis("Name: Poldracklab setup")

setenv('POLDRACKLAB_DIR', '/work/01329/poldrack/software_stampede')
append_path('PATH', '/work/01329/poldrack/software_stampede/local/bin')
append_path('PYTHONPATHPATH', '/work/01329/poldrack/software_stampede/python');
append_path('LD_LIBRARY_PATH', '/work/01329/poldrack/software_stampede/local/liblib');
load('nibabel')