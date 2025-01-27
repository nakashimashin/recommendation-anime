FROM python:3.12.2

WORKDIR /app

COPY requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 5001

CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]