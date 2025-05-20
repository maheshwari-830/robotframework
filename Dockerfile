FROM python:3.12
WORKDIR /usr/src/app
COPY path/to/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "./your-script.py"]
