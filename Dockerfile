FROM python:3.9

WORKDIR /usr/src/app

COPY Pipfile* ./
RUN pip install pipenv
RUN pipenv install --deploy --system

COPY . .

EXPOSE 8000

CMD [ "python", "main.py" ]
