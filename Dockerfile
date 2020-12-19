FROM python:3.7.9 as build
WORKDIR /build
COPY main.py .
CMD ["python3", "./main.py"]

FROM python:3.7.9-alpine3.11
WORKDIR /app
COPY --from=build /build/main.py .
CMD ["python3", "./main.py"]
