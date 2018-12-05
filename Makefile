.PHONY: all
.SILENT:

all: clean fix generate

clean:
	rm -f generated_bin
	echo "===> Deleted generated binfile"

generate:
	/bin/sh generate.sh
	echo "===> Generated binary functions"

fix:
	chmod +x */run.sh
	echo "===> Fix permissions"

build:
	echo "===> Build image stevenklar/$2"
