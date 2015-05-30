# stampede-modules
modules for lab-specific packages on stampede

## Using the module setup

on your stampede account, edit ~/.modules and add the following:

<pre>module use /work/01329/poldrack/stampede-modules
module load poldracklab-env</pre>

## Adding a new python module

1. Create a new directory within /work/01329/poldrack/python_modules/ that includes the name and version number.
For example, for module foo version 0.1.0, 

<pre> mkdir /work/01329/poldrack/python_modules/foo-0.1.0</pre>

2. Install the package into that directory:

<pre>python setup.py install --prefix=/work/01329/poldrack/python_modules/foo-0.1.0</pre>

(This may require adding the resulting site-packages directory to your pythonpath for installation to succeed.)

3. Generate a directory for the package module within /work/01329/poldrack/stampede-modules:

<pre>mkdir /work/01329/poldrack/modules/foo</pre>

4. create the module (.lua) file with the version number as its name.  for example, /work/01329/poldrack/stampede-modules/foo/0.1.0.lua
This file should include at least the command to add the relevant site-packages directory to the PYTHONPATH:

<pre>append_path('PYTHONPATH','/work/01329/poldrack/python_modules/foo-0.1.0/lib/python2.7/site-packages')</pre>

5. create a symbolic link to "default"

<pre>ln -s 0.1.0.lua default</pre>


