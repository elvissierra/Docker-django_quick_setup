#base image
FROM python:3
# instantiating the dir
WORKDIR /app
#install python dependencies
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
#copy rest of application
COPY . .
#cmd promts
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]