# Use an official Python runtime as a base image
FROM python:3.8-slim

COPY test.py requirements.txt ppe_viz.nc /

RUN pip install -r requirements.txt

RUN mkdir -p ./thumbnails/

COPY panel.png test.png ./thumbnails/

CMD ["python3", "test.py"]