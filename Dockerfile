FROM python:3.9

WORKDIR /workspace

ADD requirements.txt main.py /workspace/

RUN pip install -r /workspace/requirements.txt

CMD ["python", "/workspace/main.py"]
