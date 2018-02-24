#!/usr/bin/bash
source activate GeoPython2env

# Only run if never ran before
#conda skeleton pypi rasterstats

# Build
conda build -c conda-forge -c bioconda --python 2.7 --skip-existing rasterstats
conda build -c conda-forge -c bioconda --python 3.5 --skip-existing rasterstats

# Convert to other OS
conda convert --platform all ~/Anaconda3/conda-bld/osx-64/rasterstats-0.11.0-py27_0.tar.bz2 -o ~/GitHub/python-raster-stats/anaconda-dist/
conda convert --platform all ~/Anaconda3/conda-bld/osx-64/rasterstats-0.11.0-py35_0.tar.bz2 -o ~/GitHub/python-raster-stats/anaconda-dist/

# Upload 
#2.7
anaconda upload ~/GitHub/python-raster-stats/anaconda-dist/linux-32/rasterstats-0.11.0-py27_0.tar.bz2
anaconda upload ~/GitHub/python-raster-stats/anaconda-dist/linux-64/rasterstats-0.11.0-py27_0.tar.bz2
anaconda upload ~/GitHub/python-raster-stats/anaconda-dist/win-32/rasterstats-0.11.0-py27_0.tar.bz2
anaconda upload ~/GitHub/python-raster-stats/anaconda-dist/win-64/rasterstats-0.11.0-py27_0.tar.bz2
# 3.5
anaconda upload ~/GitHub/python-raster-stats/anaconda-dist/linux-32/rasterstats-0.11.0-py35_0.tar.bz2
anaconda upload ~/GitHub/python-raster-stats/anaconda-dist/linux-64/rasterstats-0.11.0-py35_0.tar.bz2
anaconda upload ~/GitHub/python-raster-stats/anaconda-dist/win-32/rasterstats-0.11.0-py35_0.tar.bz2
anaconda upload ~/GitHub/python-raster-stats/anaconda-dist/win-64/rasterstats-0.11.0-py35_0.tar.bz2
