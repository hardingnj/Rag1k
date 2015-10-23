FROM cannin/jupyter-r:latest

RUN R -e 'source("http://bioconductor.org/biocLite.R"); biocLite("rhdf5")';

WORKDIR /home
EXPOSE 8888
ADD ./notebook.sh /notebook.sh

CMD ["/bin/bash", "notebook.sh"]
