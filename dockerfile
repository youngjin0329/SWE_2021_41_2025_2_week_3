FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y python3
WORKDIR /app
COPY happyfunc.py .
CMD ["python3", "happyfunc.py"]