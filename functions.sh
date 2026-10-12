# Kill whatever is listening on a TCP port:  portslay 3000
portslay() {
  local pids; pids=$(lsof -ti "tcp:$1")
  [ -n "$pids" ] && echo "$pids" | xargs kill -9 || echo "nothing on port $1"
}

# Resolve a hostname to its IP
hostname2ip() {
  ping -c 1 "$1" | grep -m1 -oE '[0-9]{1,3}(\.[0-9]{1,3}){3}'
}

# Find the real URL behind a shortened one
unshorten() {
  curl -sIL "$1" | sed -n 's/^[Ll]ocation: *//p'
}
