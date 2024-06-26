FROM python:3.9.18-slim-bookworm
COPY . /app
WORKDIR /app

RUN apt update -y && apt install awscli -y

RUN pip3 install -r requirements.txt

CMD streamlit run app.py