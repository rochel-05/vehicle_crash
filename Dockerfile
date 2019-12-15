FROM python:3.7

RUN mkdir /mlroc
WORKDIR /mlroc
ADD templates/accuracy.php /mlroc/accuracy.php
ADD templates/alert.php /mlroc/alert.php
ADD templates/detection.php /mlroc/detection.php
ADD templates/detection_result.php /mlroc/detection_result.php
ADD templates/error.php /mlroc/error.php
ADD templates/index.php /mlroc/index.php
ADD templates/login.php /mlroc/login.php
ADD templates/lpr.php /mlroc/lpr.php
ADD . /mlroc/
#RUN pip install -r requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
CMD ["python", "/mlroc/run.py"]
CMD ["sh", "-c", "tail -f /dev/null"]
