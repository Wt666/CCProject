FROM python

ENV ACCESS_TOKEN 1602390478:AAFR_3sWM9QXVzmqlRvYYA4Er5-MEz_aYAg
ENV HOST redis-14699.c92.us-east-1-3.ec2.cloud.redislabs.com 
ENV PASSWORD 980819
ENV REDISPORT 14699

COPY ./chatbot1.py /
COPY ./requirements.txt /
COPY ./config.ini /

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD python chatbot1.py