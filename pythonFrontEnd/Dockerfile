FROM python:3

RUN pip install -r requirements.txt

# The last thing that should be present in a Dockerfile
# Main purpose of CMD is to provide defaults for an existing container, will start gunicorn server and get app running.
CMD ./run_server.sh
