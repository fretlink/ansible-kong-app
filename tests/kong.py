#!/usr/bin/env python3

from http.server import HTTPServer, CGIHTTPRequestHandler

class SimpleHTTPRequestHandler(CGIHTTPRequestHandler):
    def do_GET(self):
        if self.path == '/services/test':
            self.send_response(404)
        else:
            self.send_response(200)
        self.send_header('Content-Type', 'application/json')
        self.end_headers()
        self.wfile.write(b'{ "data": [] }')

    def do_POST(self):
        self.send_response(201)
        self.end_headers()
        self.wfile.write(b'Hello, world!')


httpd = HTTPServer(('127.0.0.1', 8000), SimpleHTTPRequestHandler)
httpd.serve_forever()
