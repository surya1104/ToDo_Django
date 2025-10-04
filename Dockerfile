FROM python

WORKDIR /app

COPY pip_requirements.txt /app

RUN pip install --upgrade pip

RUN pip install -r pip_requirements.txt

COPY . /app

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]