Summary
=======
Simple wrapper for EM::HttpRequest. 

Adds basic support for the following HTTP methods used by WebDAV-enabled
webservers:

PROPFIND, PROPPATCH, MKCOL, COPY, MOVE, LOCK, UNLOCK, OPTIONS

Example
-------
    EM.run do
      http = EM::HttpRequest.new("http://some.davserver.foo/path").propfind :head => {"Depth": "1", "Authorization": ["harry", "b4lz3r"]}
      http.callback { 
        puts http.response
      }
    end

Caveats
-------
The provided methods don't add support for any WebDAV fanciness. You are
required to provide additional functionality to list files, change
properties, move things around or travel backwards in time.

Warnings
--------
Do not use near eyes. If ingested, call you physician.

Errata
------
Follow me @scottburton

License
-------
This software is available via the MIT License, and is copyright 2011 by Scott Burton.