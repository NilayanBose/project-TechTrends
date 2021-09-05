FROM python:3.8.3
LABEL maintainer="nilayanbose"

WORKDIR /app
COPY techtrends /app

EXPOSE  3111

RUN pip install -U pip && \
    pip install -r requirements.txt

# initialize database
CMD ["python", "init_db.py"]

# command to run on container start
CMD [ "python", "app.py" ]