FROM python:stretch

COPY . /app
WORKDIR /app

RUN echo 'python 279'
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]