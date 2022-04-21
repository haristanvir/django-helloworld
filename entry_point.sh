#opentelemetry-instrument python manage.py runserver --noreload
OTEL_EXPORTER_OTLP_ENDPOINT=http://127.0.0.1:4317 OTEL_PROPAGATORS=xray OTEL_PYTHON_ID_GENERATOR=xray opentelemetry-instrument uwsgi --http :8000 --module helloworld.wsgi
