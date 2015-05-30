# stampede-modules
modules for lab-specific packages on stampede

## Using the module setup

on your stampede account, edit ~/.modules and add the following:

module use /work/01329/poldrack/stampede-modules
module load poldracklab-env

## Adding a new python module

1. Create a new directory within /work/01329/poldrack/python_modules/ that includes the name and version number.
For example, for module foo version 0.1.0, create /work/01329/poldrack/python_modules/foo-0.1.0

2. Install the package into that directory:

python setup.py install --prefix=/work/01329/poldrack/python_modules/foo-0.1.0

(This may require adding the resulting site-packages directory to your pythonpath for installation to succeed.)

3. Generate a directory for the package module within /work/01329/poldrack/stampede-modules:

mkdir /work/01329/poldrack/modules/foo

4. create the module (.lua) file with the version number as its name.  for example, /work/01329/poldrack/stampede-modules/foo/0.1.0.lua
This file should include at least the command to add the relevant site-packages directory to the PYTHONPATH:

append_path('PYTHONPATH','/work/01329/poldrack/python_modules/foo-0.1.0/lib/python2.7/site-packages')

5. create a symbolic link to "default"

ln -s 0.1.0.lua default


