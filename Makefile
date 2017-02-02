
.PHONY: build
build:
	docker build -t micktwomey/fpm .

.PHONY: test
test:
	docker run --rm -it -v $(CURDIR):/src micktwomey/fpm -s empty -t rpm -n fpm-test
	docker run --rm -it -v $(CURDIR):/src micktwomey/fpm -s empty -t deb -n fpm-test
