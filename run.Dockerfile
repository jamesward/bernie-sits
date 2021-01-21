FROM gcr.io/buildpacks/gcp/run:v1
USER root
RUN apt-get update
RUN apt-get install -y --no-install-recommends libsm6 libxrender1 libfontconfig1 libice6 libgl1 libglib2.0-0
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
USER cnb
