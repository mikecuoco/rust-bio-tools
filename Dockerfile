FROM gitpod/workspace-full
RUN sudo apt-get install --yes libgsl0-dev

USER gitpod
ENV SHELL /bin/bash
RUN curl -Ls https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba
ENV MAMBA_ROOT_PREFIX /home/gitpod/micromamba
RUN ./bin/micromamba create -n rbt bcftools starcode -c conda-forge -c bioconda
RUN yes | ./bin/micromamba shell init -s bash

