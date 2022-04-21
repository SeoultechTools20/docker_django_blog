FROM python:3.8
 
# RUN pip install django==3.1.13
# RUN pip install pymysql==1.0.2

WORKDIR /usr/src/app
COPY . .
WORKDIR ./python_django_blogapp_restframework
RUN pip install -r requirements.txt
CMD ["python3", "manage.py", "migrate"]
CMD ["python3", "manage.py", "runserver", "0:8000"]
EXPOSE 8000