# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python

EXPOSE 5000

WORKDIR /program

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY src/ .

CMD ["python3", "./app.py"]


