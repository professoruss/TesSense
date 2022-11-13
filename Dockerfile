FROM python:3

RUN mkdir /TesSense
WORKDIR /TesSense
COPY requirements.txt /TesSense/
COPY TesSense.py /TesSense/
RUN touch config.py
RUN touch cache.json

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./TesSense.py" ]
