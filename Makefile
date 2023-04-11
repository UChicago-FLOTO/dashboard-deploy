deploy:
	docker-compose up -d
	docker-compose exec floto ./manage.py migrate
	docker-compose exec floto ./manage.py collectstatic --noinput
