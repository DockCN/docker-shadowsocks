# shadowsocks

Python implementation of shadowsocks server running in docker container.

```
docker run -d --restart=always --name shadowsocks -p 10000:8388 \
	custa/shadowsocks \
	-k "${SS_PASSWORD}"
```
