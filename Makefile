SRC=src
OUTPUT=elm.js
ELM_STUFF=elm-stuff
NODE=node
NUKE=rm -rf

SRCS = $(wildcard $(SRC)/*.elm)

help:
	@cat Makefile


clean:
	$(NUKE) $(ELM_STUFF)/build-artifacts $(OUTPUT)


dist-clean:
	$(NUKE) $(ELM_STUFF) $(OUTPUT)


build:
	elm make $(SRC)/Main.elm --output=$(OUTPUT)


# use like so:
#
#   $ make run ARGS="--verbose --num-threads=3"
#
run: $(OUTPUT)
	$(NODE) index.js $(ARGS)


$(OUTPUT): $(SRCS)
	make build


b: build
r: run
