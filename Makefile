CUR_DIR = $(CURDIR)
BUILDS=thali whirlpool-client whirlpool-client-cli

.PHONY: all clean rebuild export $(BUILDS)

all: $(BUILDS)
	echo "Build all"

rebuild: clean all
	echo "Clean & rebuild all"

clean:
	echo "Clean all"
	docker-compose down --volume
	rm -rf target

$(BUILDS): %:
	docker-compose build $@
	docker-compose up $@

export:
	mkdir -p target
	docker-compose run -T -w /export/.m2/repository/com/github/Samourai-Wallet export tar zcvf - whirlpool-client > target/whirlpool-client.tgz
	docker-compose run -T -w /export/.m2/repository/com/github/Samourai-Wallet export tar zcvf - whirlpool-client-cli > target/whirlpool-client-cli.tgz
