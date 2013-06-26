TEX = xelatex

BIN = ./bin
ASSETS = ./assets
SRC = ./src/common

MAIN = $(SRC)/main.tex
BUNDLE = andrew_vasilyev_software_developer_cv_$(shell date +'%y%m%d')

all:
	mkdir -p $(BIN)
	$(TEX) -output-directory=$(BIN) -jobname=$(BUNDLE) $(MAIN)

clean::
	rm -rf ./bin
