#use a node base image
From ubuntu

#Set maintainer
LABEL maintainer "mirror@getintodevops.com

CMD ["echo", "hello World...! Frosm my first docker image"]

#Set a health check
#HEALTHCHECK --interval=5s \
#	    --timoeout=5s \
#	    --CMD curl -f http://127.0.0.1:8000 || exit 1

#tell docker what port to expose
#EXPOSE 8000
