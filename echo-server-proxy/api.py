import hug


@hug.get('/echo-server-proxy')
def echo(msg):
    return f"echo-server-proxy: {msg}"
