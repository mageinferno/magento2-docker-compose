export SCRIPT_NAME="/ping"
export SCRIPT_FILENAME="/ping"
export REQUEST_METHOD="GET"

ping_response=$(cgi-fcgi -bind -connect /sock/docker.sock 2> /dev/null | tail -n 1)

if [ "$ping_response" != "pong" ]; then
  exit 1
fi
