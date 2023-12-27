FROM python:3

RUN pip install asgiref==3.7.2
RUN pip install dj-database-url==2.1.0
RUN pip install Django==3.2.20
RUN pip install django-environ==0.11.1
RUN pip install gunicorn==21.2.0
RUN pip install psycopg2-binary==2.9.7
RUN pip install pytz==2023.3
RUN pip install sqlparse==0.2.2
RUN pip install tzdata==2023.3
RUN pip install whitenoise==6.5.0
RUN pip install django-google-fonts==0.0.3

COPY . .

CMD ["python","manage.py","runserver","0.0.0.0:8001"]

