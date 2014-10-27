DRAX_DIR := ../drax
DRAX_DIST := $(DRAX_DIR)/.dist
DIST_COPY := ./drax-dist

all: drax docker

clean:
	rm -rf $(DIST_COPY)

drax:
	rm -rf $(DIST_COPY)
	cd $(DRAX_DIR) && npm run production-dist
	cp -r $(DRAX_DIST) $(DIST_COPY)

docker:
	docker build -t drax .
