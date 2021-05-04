#!/bin/bash
MY_VENV=fpd_anomaly
PYTHON_VERSION=3.8

conda create \
    --name $MY_VENV \
    python=$PYTHON_VERSION -y && \

conda activate $MY_VENV && \
    
pip install \
    -r ~/bi-fpd-anomaly/requirements.txt && \

pip install \
    --user ipykernel && \
    
python -m ipykernel install \
    --user \
    --name=$MY_VENV