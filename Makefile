.POSIX:

include config.mk

all: example

teal.conf:
	cp -f teal.conf.def teal.conf

style.css:
	cp -f style.css.def style.css

clean:
	rm -rf teal.conf style.css out teal-$(VERSION).tar.gz

dist:
	mkdir -p teal-$(VERSION)
	cp -rf teal teal.conf.def teal.1 teal.conf.5 style.css.def Makefile \
		config.mk LICENSE example README.md teal-$(VERSION)
	tar -cf teal-$(VERSION).tar teal-$(VERSION)
	gzip teal-$(VERSION).tar
	rm -rf teal-$(VERSION)

example: teal.conf style.css
	./teal

install:
	mkdir -p $(DESTDIR)/$(PREFIX)/bin
	cp -f teal $(DESTDIR)$(PREFIX)/bin/teal
	chmod 755 $(DESTDIR)$(PREFIX)/bin/teal
	mkdir -p $(DESTDIR)/$(PREFIX)/share/man/man1
	cp -f teal.1 $(DESTDIR)/$(PREFIX)/share/man/man1
	mkdir -p $(DESTDIR)/$(PREFIX)/share/man/man5
	cp -f teal.conf.5 $(DESTDIR)/$(PREFIX)/share/man/man5

uninstall:
	rm -f $(DESTDIR)/$(PREFIX)/bin/teal
	rm -f $(DESTDIR)/$(PREFIX)/share/man/man1/teal.1
	rm -f $(DESTDIR)/$(PREFIX)/share/man/man7/teal_conf.7

.PHONY: all clean dist example install uninstall
