# docker-shadowsocks

Python implementation of shadowsocks server running in docker container.

	docker run -d --restart=always --name shadowsocks -p 10000:8388 \
		-e "SS_PASSWORD=${SS_PASSWORD}" \
		custa/docker-shadowsocks

or

	docker run -d --restart=always --name shadowsocks -p 10000:8388 \
		custa/docker-shadowsocks \
		-k "${SS_PASSWORD}"
