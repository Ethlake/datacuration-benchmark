FROM nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Chicago
ENV CONDA_DIR=/opt/conda
ENV PATH=/opt/conda/bin:$PATH
ENV CUDA_HOME=/usr/local/cuda
ENV FORCE_CUDA=1

RUN apt-get update && apt-get install -y \
    wget \
    git \
    curl \
    ca-certificates \
    bzip2 \
    build-essential \
    pkg-config \
    ninja-build \
    vim \
    tmux \
    htop \
    ffmpeg \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender1 \
    && rm -rf /var/lib/apt/lists/*

RUN wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p $CONDA_DIR && \
    rm /tmp/miniconda.sh && \
    conda clean -afy

COPY docker/envs/train.yml /tmp/train.yml
COPY docker/envs/eval.yml /tmp/eval.yml

RUN conda env create -f /tmp/train.yml && \
    conda env create -f /tmp/eval.yml && \
    conda clean -afy

RUN echo 'source /opt/conda/etc/profile.d/conda.sh' >> /root/.bashrc

WORKDIR /workspace

COPY docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
