FROM python:3

LABEL version="1.0.0" \
    description="Python - API" \
    maintainer="Mauricio Magnani <msmagnanijr@gmail.com"

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "app.py" ]