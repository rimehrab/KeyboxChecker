FROM python:slim
LABEL authors="rimehrab"

ENV WORKDIR=/app
WORKDIR $WORKDIR
ADD . $WORKDIR
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["python", "main.py"]