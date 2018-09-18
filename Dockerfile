FROM python:3.6

ARG requirements=requirements.txt
WORKDIR /app
COPY . .
RUN pip install -i https://pypi.douban.com/simple/ -r $requirements

#RUN chmod +x /app/docker-entrypoint.sh
#CMD ["/bin/bash", "/app/docker-entrypoint.sh"]

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

