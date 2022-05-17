FROM python:3.10.4-slim-buster
RUN useradd -m cener
USER cener
VOLUME /data/packages
RUN pip install --user --no-warn-script-location pypiserver
EXPOSE 8080
CMD /home/cener/.local/bin/pypi-server -v -p 8080 /data/packages
