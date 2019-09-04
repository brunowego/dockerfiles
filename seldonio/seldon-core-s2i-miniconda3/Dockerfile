FROM continuumio/miniconda3:4.6.14

LABEL io.openshift.s2i.scripts-url='image:///s2i/bin'

RUN conda install tensorflow==1.14.0 -y && \
    conda clean -ay

RUN pip install --no-cache-dir seldon-core==0.3.1

WORKDIR /microservice

COPY ./s2i/bin/ /s2i/bin

EXPOSE 5000
