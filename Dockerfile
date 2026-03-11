FROM alpine:latest

RUN apk add python3 py3-pip git libmagic

WORKDIR /
RUN git clone https://github.com/Gorcenski/skeeter-deleter.git

ENV VIRTUAL_ENV=/skeeter-deleter
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN pip install -r /skeeter-deleter/requirements.txt
CMD ["python", "/skeeter-deleter/skeeter_deleter.py"]
