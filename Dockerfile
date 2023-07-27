# Use an official Python runtime as a base image
FROM python:3.8-slim

COPY test.py requirements.txt ppe_viz.nc /

RUN pip install -r requirements.txt

CMD ["python3", "test.py"]