FROM cannin/jupyter-r:latest

RUN apt-get install -y libhdf5-dev
RUN R -e 'install.packages("devtools", repos="http://cran.us.r-project.org")'
RUN R -e 'library(devtools); install_github("mannau/h5");'

WORKDIR /home
RUN curl -O ftp://ngs.sanger.ac.uk/production/ag1000g/phase1/AR3/variation/main/hdf5/ag1000g.phase1.ar3.Y_unplaced.h5
RUN curl -O ftp://ngs.sanger.ac.uk/production/ag1000g/phase1/AR3/variation/main/hdf5/ag1000g.phase1.ar3.pass.3L.h5
RUN curl -O ftp://ngs.sanger.ac.uk/production/ag1000g/phase1/AR3/samples/samples.meta.txt

RUN pip3 install h5py

EXPOSE 8888
ADD ./notebook.sh /notebook.sh

CMD ["/bin/bash", "/notebook.sh"]
