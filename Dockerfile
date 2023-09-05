# syntax=docker/dockerfile:1

# FROM python:3.10-bullseye

FROM python:3.8-bullseye

EXPOSE 7865

WORKDIR /app

# comment this if the volume connected
# COPY . .

RUN python3.8 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt

# CMD ["python3", "infer-web.py"]

ENTRYPOINT ["chmod", "u+x", "run.sh"]

CMD ["./run.sh"]