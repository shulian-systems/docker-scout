api: api.dockerfile
	docker build -t shulian/scout:api -f api.dockerfile .

sentry: sentry.dockerfile
	docker build -t shulian/scout:sentry -f api.dockerfile .
