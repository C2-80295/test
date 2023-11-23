FROM python

WORKDIR /src

COPY hello.py .
EXPOSE 9000
CMD ["python3", "hello.py"]

