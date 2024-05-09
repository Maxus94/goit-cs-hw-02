FROM python:3.10-slim

ENV APP_DIR /application
WORKDIR $APP_DIR

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "python", "main.py" ]