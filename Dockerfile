FROM prefecthq/prefect:3.0.1-python3.11

# extra pip packages for Dask on Kubernetes and S3
RUN pip install s3fs prefect-dask

# base Python dependencies
RUN pip install python-dotenv typesense

RUN mkdir /opt/dptweb_padding_dir

RUN mkdir /.prefect
RUN chgrp -R 0 /.prefect && \
         chmod -R g=u /.prefect

RUN chgrp -R 0 /opt && \
         chmod -R g=u /opt

USER 1001