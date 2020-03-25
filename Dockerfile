FROM continuumio/miniconda3:4.8.2

LABEL authors="cgpu" \
      description="Docker image containing dependencies for parameterising Jupyter Notebooks with nteract/papermill and friends"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/papermill/bin:$PATH