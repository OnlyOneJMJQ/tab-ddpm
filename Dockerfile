FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime

WORKDIR /tab-ddpm

COPY ./requirements.txt .
COPY data .

RUN pip install -r requirements.txt

COPY . .
