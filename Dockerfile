FROM python:3.12
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /usr/src/app
RUN pip install --upgrade pip
COPY src/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "app.py"]
