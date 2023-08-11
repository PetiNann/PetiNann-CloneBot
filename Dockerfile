FROM python

RUN apt -y update && apt -y upgrade

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
