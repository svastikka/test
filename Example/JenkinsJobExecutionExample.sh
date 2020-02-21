#!/bin/sh -xe
(wget -q --auth-no-challenge --user $USER --password $PASSWORD --output-document - 'http://localhost:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
curl -I -X POST http://root:$TOKEN@localhost:8080/job/ShellCommandFolder/job/PWD/build -H Jenkins-Crumb:00c13894191ae39d3432b0f84ecf9b92f167c76f679f53fb8dd152a37cd0c9f0
