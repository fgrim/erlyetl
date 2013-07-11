PROJECT ?= erlyetl
DEPS_DIR ?= deps
ERL ?=  erl

export DEPS_DIR

all: get-deps app

app:
	rebar compile

clean-all: clean clean-deps
	rm -rf logs

get-deps:
	rebar get-deps

clean:
	rm -rf ebin

clean-deps:
	rm -rf $(DEPS_DIR)
