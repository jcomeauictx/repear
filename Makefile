IPODHOME ?= $(HOME)/Downloads/itouch
OPTIONS := help freeze unfreeze update dissect reset config
HELP := $(shell echo $(OPTIONS) | tr ' ' '|')
export
default:
	@echo Use: $(MAKE) '[$(HELP)]' >&2
$(OPTIONS): repear.py
	./$< $@
env:
	$@
