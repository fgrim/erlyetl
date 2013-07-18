PROJECT ?= erlyetl
DEPS_DIR ?= deps
ERL ?=  erl

export DEPS_DIR

all: get-deps app

app:
	rebar compile generate

clean: clean-deps
	rm -rf logs
	rm -rf ebin

get-deps:
	rebar get-deps

clean-deps:
	rm -rf $(DEPS_DIR)
