FROM prefecthq/prefect:3.4.13-python3.12

# extra pip packages for Dask on Kubernetes and S3
RUN pip install s3fs prefect-dask

# base Python dependencies
RUN pip install python-dotenv typesense

RUN mkdir /opt/dptweb_padding_dir


# für OpenShift-Berechtigungen einkommentieren:

#RUN mkdir /.prefect
#RUN chgrp -R 0 /.prefect && \
#         chmod -R g=u /.prefect
#
#RUN chgrp -R 0 /opt && \
#         chmod -R g=u /opt
#
#USER 1001