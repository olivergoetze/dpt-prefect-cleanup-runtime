FROM prefecthq/prefect:3.0.1-python3.11

# extra pip packages for Dask on Kubernetes and S3
RUN pip install s3fs prefect-dask

# base Python dependencies
RUN pip install python-dotenv typesense