BUILDS=build-thali build-whirlpool-client build-whirlpool-client-cli

.PHONY: all clean rebuild $(BUILDS)

all: $(BUILDS)
	echo "Build all"

rebuild: clean all
	echo "Clean & rebuild all"

clean:
	echo "Clean all"
	docker-compose down --volume

$(BUILDS): %:
	docker-compose up $@
