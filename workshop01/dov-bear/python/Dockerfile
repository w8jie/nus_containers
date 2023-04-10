#do the same for python
FROM python:3.8

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY main.py .
COPY run.sh .
COPY utils.py .
COPY public public
COPY templates templates

ENV PORT=3000

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
    CMD curl localhost:#{PORT}/healthz || exit 1

EXPOSE ${PORT}

ENTRYPOINT python main.py

#IMPT: Python uses python base image, using pip to install app dependencies via requirements.txt


