#!/bin/sh

# Usa PORT si la plataforma la provee; por defecto 8000.
PORT_VALUE="${PORT:-8000}"

echo "Starting uvicorn on port ${PORT_VALUE}"
exec uvicorn main:app --host 0.0.0.0 --port "${PORT_VALUE}"
