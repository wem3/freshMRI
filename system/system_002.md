freshMRI_002: system setup - python
----------

Mac OS X (10.9) includes an installation of python, but the system needs these packages to remain intact in order to run smoothly. In order to avoid conflicts (and keep our dependencies nicely managed), we'll install a separate version of Python via Homebrew.

In theory, we could get away with only installing Homebrewed Python, setuptools (a program that helps install python packages), and pip (the python package management system), then install any other packages we need through virtual environments, but Homebrew actually does a much better job of installing and compiling some of the libraries we'll need.

First, let's install an updated, isolated version of python:  
```bash
brew install python --with-openSSL
```  

Next, we need to tell the system to look for Homebrew installed python packages before looking in the system python. We can do so by augmenting our path (see [freshMRI_003](https://github.com/wem3/freshMRI/raw/freshMRI_003) for more details on this):  
```bash
export PATH=/usr/local/bin:${PATH}
```

Now we need to use pip to upgrade itself and setuptools, as well as install virtualenv and virtualenvwrapper (more on this later):
```bash
pip install virtualenv  
pip install virtualenvwrapper  
```  

We'll need a different compiler than the one that comes standard with OS X:  
```bash  
brew install gfortran  
```

In order to get IPython Notebook up and running, there are a few more dependencies we need to Homebrew before we start installing the python dependencies:  
```bash  
brew install pkg-config freetype libpng pyqt zmq
```  

Now we can install numpy (which is pretty much the cornerstone of data analysis in python):  
```bash
brew install numpy --with-openBLAS
```
_(note: we built numpy against the openBLAS library)_  

and scipy:  
```bash
brew install scipy --with-openBLAS
```  

now PIL (the python image library) and matplotlib (so we can make sweet graphs)
```bash  
brew install pillow matplotlib  
```  

We're almost ready for action!
