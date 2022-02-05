# We're using Ubuntu 20.10
FROM vckyouuu/geezproject:buster

RUN git clone -b WIKI-UBOT https://github.com/Wiki28/WIKI-UBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Wiki28/WIKI-UBOT/WIKI-UBOT/requirements.txt

CMD ["python3","-m","userbot"]
