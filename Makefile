IPODHOME ?= $(HOME)/Downloads/ipod/private/var/mobile/Media
OPTIONS := help freeze unfreeze update dissect reset config
HELP := $(shell echo $(OPTIONS) | tr ' ' '|')
export
default:
	@echo Use: $(MAKE) '[$(HELP)]' >&2
$(OPTIONS): repear.py
	./$< --root=$(IPODHOME) $@
env:
	$@
