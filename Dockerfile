FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
<<<<<<< HEAD
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app
=======
CMD gunicorn --worker=4 --bind 0.0.0.0:$PORT app:app
>>>>>>> 6e09e38c77775136e56c75e7ee418e1bd74cd988
