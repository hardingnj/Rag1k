FROM cannin/jupyter-r:latest

EXPOSE 8888
ADD ./notebook.sh /notebook.sh

CMD ["/bin/bash", "/notebook.sh"]
