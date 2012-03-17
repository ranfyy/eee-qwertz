PRJ=eee-qwertz
VERSION=$(shell cat Version)
UPLOAD_URL=https://code.google.com/p/eee-qwertz/downloads/list
BROWSER=firefox
REV=$(shell svnversion .)

clean:
	@rm ../$(PRJ)_$(VERSION)_r$(REV).zip

version:
	@echo version: $(VERSION)

revision:
	@echo revision: $(REV)

dist:
	zip  ../$(PRJ)_$(VERSION)_r$(REV).zip * -x@.zipignore 

upload:
	$(BROWSER) $(UPLOAD_URL)

all:
	dist upload


