#!/bin/sh
echo "About to configure haproxy on port $PORT"
sed -i "s/\$PORT/${PORT}/g" haproxy.cfg
echo "haproxy configure:"
cat haproxy.cfg
echo "About to start haproxy"
./haproxy -f haproxy.cfg -db
