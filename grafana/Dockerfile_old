FROM grafana/grafana:latest

RUN grafana-cli plugins install yesoreyeram-boomtheme-panel

WORKDIR /etc/grafana

COPY grafana.ini .
COPY grafana.db .

EXPOSE 5000

WORKDIR /var/lib/grafana

RUN cp /etc/grafana/grafana.db .
