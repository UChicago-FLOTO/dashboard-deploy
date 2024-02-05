deploy:
	docker-compose up -d
	docker-compose exec floto ./manage.py migrate
	docker-compose exec floto ./manage.py collectstatic --noinput

.PHONY: db
db:
	docker exec -it floto_db mysql -u flotouser -pflotopass floto
