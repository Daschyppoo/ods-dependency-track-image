#ENV kann auch hier anstatt in docker-compose erstellt werden
FROM owasp/dependency-track

USER root

RUN chgrp -R 0 /opt/owasp/dependency-track/ && \
    chmod -R g=u /opt/owasp/dependency-track/
RUN chgrp -R 0 /data/ && \
    chmod -R g=u /data/
RUN chgrp -R 0 /extlib/ && \
    chmod -R g=u /extlib/