FROM python:3.7

RUN mkdir /mlroc
WORKDIR /mlroc
ADD accuracy.php /mlroc/accuracy.php
ADD alert.php /mlroc/alert.php
ADD detection.php /mlroc/detection.php
ADD detection_result.php /mlroc/detection_result.php
ADD error.php /mlroc/error.php
ADD index.php /mlroc/index.php
ADD login.php /mlroc/login.php
ADD lpr.php /mlroc/lpr.php
ADD . /mlroc/
#RUN pip install -r requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
CMD ["python", "/mlroc/run.py", "tail -f /dev/null"]
#CMD: [ "/bin/bash", "-ce", "tail -f /dev/null" ]
