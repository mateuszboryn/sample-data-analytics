
# for Docker container we can use --allow-root. Outside Docker it is really not recommended.
c.NotebookApp.allow_root = True

# listen on all network interfaces
c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.port = 8888

# allow quickly connect without token
c.NotebookApp.token = ''
