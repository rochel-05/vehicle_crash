FROM python:3.7

RUN mkdir /mlroc
WORKDIR /mlroc
ADD . /mlroc/
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "/mlroc/main.py"]
