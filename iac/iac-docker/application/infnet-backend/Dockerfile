FROM python:3

LABEL version="0.0.1" \
    description="Python - Infnet" \
    maintainer="Mauricio Magnani <msmagnanijr@gmail.com"

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "app.py" ]