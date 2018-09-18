FROM perl:5.20
COPY . /usr/src/pipeline

VOLUME /ontology

ENV VOLUMEDATA=/ontology

WORKDIR /usr/src/pipeline

RUN cd "${WORKSPACE}" && \
echo '** Git checkout VFB_neo4j **' && \
git clone --quiet https://github.com/FlyBase/flybase-controlled-vocabulary.git

CMD [ "perl", "./your-daemon-or-script.pl" ]
