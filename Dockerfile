FROM python:3.8
WORKDIR /app
COPY . .
COPY ./entry_point.sh entrypoint.sh
RUN chmod +x entrypoint.sh
RUN pip install -r requirements.txt
RUN opentelemetry-bootstrap --action=install
ENV LISTEN_ADDRESS=127.0.0.1:8000
ENV OTEL_RESOURCE_ATTRIBUTES=service.name=esfapp
ENV OTEL_EXPORTER_OTLP_ENDPOINT=http://127.0.0.1:4317
ENV OTEL_PROPAGATORS=xray
ENV OTEL_PYTHON_ID_GENERATOR=xray
EXPOSE 8000
ENTRYPOINT ./entrypoint.sh
