env:
	docker network create mynetwork --driver=bridge
	docker-compose up -d elasticsearch
	docker-compose up -d kibana
	docker-compose up -d logstash

start:
	docker-compose start

stop:
	docker-compose stop

clean:
	docker-compose down --rmi local -v
	docker network rm mynetwork