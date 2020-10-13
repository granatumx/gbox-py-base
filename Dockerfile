FROM granatumx/gbox-base:1.0.0

RUN apt install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install -y python3.9

RUN apt-get install -y python3-igraph python3-dev libcairo2-dev
RUN apt-get install -y python3-tk
RUN apt-get install -y python3-pip

RUN ln -s /usr/bin/pip3 /usr/bin/pip
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN ln -s /usr/bin/idle3 /usr/bin/idle
RUN ln -s /usr/bin/python3-config /usr/bin/python-config
RUN ln -s /usr/bin/pydoc3 /usr/bin/pydoc

RUN pip install wheel
# RUN pip install cmake
RUN pip install pathlib
# RUN pip install Cython
RUN pip install ansicolors
RUN pip install numpy

# RUN apt-get install -y libblas3 liblapack3
# liblapack-dev libblas-dev libopenblas-dev gfortran
# RUN pip install scipy
RUN apt-get install -y python3-scipy
RUN pip install scikit-learn
RUN apt-get install -y libhdf5-dev
RUN apt-get install -y python3-pandas
# RUN pip install pandas
# RUN pip install anndata
# RUN pip install bokeh 
RUN pip install xlrd
RUN pip install colour
RUN pip install h5py 
RUN pip install hdbscan
RUN pip install ipython
RUN pip install joblib
RUN pip install natsort
RUN pip install matplotlib==3.3.0
# RUN pip install networkx 
# RUN apt-get -y install wget lsb-release software-properties-common
# RUN bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
# RUN pip install llvmlite
# RUN pip install numba
# RUN apt-get -y install python3-numba
RUN pip install pycairo
# RUN pip install modin[ray]
# RUN pip install scanpy

# This will go on every gbox
# COPY . .
# ARG VER=1.0.0
# ARG GBOX=granatumx/gbox-genefiltering
# ENV VER=$VER
# ENV GBOX=$GBOX:$VER
# WORKDIR /usr/src/app
# RUN ./GBOXtranslateVERinYAMLS.sh
# RUN ./GBOXgenTGZ.sh
