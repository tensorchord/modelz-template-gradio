FROM python:3.9

ARG GRADIO_PORT=8080
ENV GRADIO_PORT=${GRADIO_PORT}

WORKDIR /workspace

ADD requirements.txt main.py /workspace/

RUN pip install -r /workspace/requirements.txt

CMD ["python", "/workspace/main.py"]
