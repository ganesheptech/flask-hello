FROM python:3.9-slim-buster
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./
COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt
ENV FLASK_APP hello.py
ENV FLASK_DEBUG true
ENV FLASK_RUN_PORT 8000
ENV FLASK_RUN_HOST 0.0.0.0
EXPOSE 8000
CMD ["flask", "run"]

