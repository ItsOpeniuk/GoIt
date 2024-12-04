FROM python:3.10.11

ENV APP=/app

WORKDIR $APP

COPY . .

RUN pip install --no-cache-dir pipenv

RUN pipenv install --deploy --system

ENTRYPOINT ["python", "hw.py"]
