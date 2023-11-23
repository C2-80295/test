FROM python

WORKDIR /src

COPY hello.py .
CMD ["python3", "hello.py"]

