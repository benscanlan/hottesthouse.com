import ssl
import os
import http.server
#from http.server import HTTPServer, BaseHTTPRequestHandler, SimpleHTTPRequestHandler
import socketserver

PORT = 8000
DIRECTORY = "public"

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

with socketserver.TCPServer(('localhost', PORT), Handler) as httpd:
    print("serving at " , "https://" ,'localhost', ":", PORT)
    httpd.socket = ssl.wrap_socket (httpd.socket,
        keyfile="security/server.key", #key.pem"
        certfile="security/server.crt", server_side=True) #cert.pem
    httpd.serve_forever()




#BaseHTTPRequestHandler
#Handler = HTTPServer.SimpleHTTPRequestHandler
#httpd = HTTPServer(('localhost', 8000), Handler )
#
#httpd.socket = ssl.wrap_socket (httpd.socket,
#        keyfile="security/server.key", #key.pem"
#        certfile="security/server.crt", server_side=True) #cert.pem
#
#
#httpd.serve_forever()

#####does same thing doesnt grab all the contect like starting from command line default
#    def do_GET(self):
#        #meta#self._set_headers()
#        
#        self.send_response(200)
#        self.end_headers()
#        f = open("index.html", "r")
#        self.wfile.write(f.read()) # because that's ALL it writes!!!
