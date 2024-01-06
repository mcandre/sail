.POSIX:
.SILENT:
.PHONY: \
	all \
	audit \
	bashate \
	funk \
	lint \
	safety \
	shellcheck \
	shfmt \
	slick \
	test \
	unmake \
	yamllint

all: lint

audit: safety

lint: \
	bashate \
	funk \
	shellcheck \
	shfmt \
	slick \
	unmake \
	yamllint

bashate:
	stank -exInterp zsh . | \
		grep -v .sample | \
		xargs -n 1 bashate -i E006

funk:
	funk .

safety:
	safety check

shellcheck:
	stank -exInterp zsh . | \
		grep -v .sample | \
		xargs -n 1 shellcheck

shfmt:
	stank -exInterp zsh . | \
		grep -v .sample | \
		xargs -n 1 shfmt -w -i 4

slick:
	stank -sh . | \
		grep -v .sample | \
		xargs -n 1 slick

test:
	sail examples | \
	    xargs -n 1 clang-format
	sail -c examples
	sail -cpp examples
	sail -c -cpp examples
	sail -h

unmake:
	unmake .
	unmake -n .

yamllint:
	yamllint -s .yamllint .
