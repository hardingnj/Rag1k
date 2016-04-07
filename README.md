# Rag1k

This repo is a quick start guide to working with data from the Anopheles gambiae 1000 Genomes project, which you can read more about [here]().

By building the dockerfile present, you will have access to all the libraries you need to analyse hdf5 genomic data in R. 

You will need to ensure the (freely available) ag1000g data is available on your system.

## Setup

Download the docker image via

`docker pull cggh/Rag1k`

copy the run script to somewhere on your system. Edit it so that you map:

1. The location of your data to /data or similar
2. The location of analysis code to /code or similar

The default run script assumes that data is in 


