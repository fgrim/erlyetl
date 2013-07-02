DEPS_DIR ?= $(CURDIR)/deps
export DEPS_DIR

ALL_DEPS_DIRS = $(addprefix $(DEPS_DIR)/,$(DEPS))

clean-all: clean clean-deps
	rm -rf logs

deps:
	rebar get-deps

clean-deps:
	rm -r $(DEPS_DIR)
