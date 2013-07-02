PROJECT ?= erlyetl
DEPS_DIR ?= deps
export DEPS_DIR

all: get-deps app

app: ebin/$(PROJECT).app
	rebar compile

ebin/$(PROJECT).app:
	@mkdir -p ebin/

clean-all: clean clean-deps
	rm -rf logs

get-deps:
	rebar get-deps

clean:
	rm -rf ebin

clean-deps:
	rm -rf $(DEPS_DIR)
