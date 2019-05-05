all: admin sentry

admin: admin.dockerfile
	docker build -t shulian/scout:admin -f admin.dockerfile .

sentry: sentry.dockerfile
	docker build -t shulian/scout:sentry -f sentry.dockerfile .

.PHONY: all
