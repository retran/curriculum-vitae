TEX = xelatex

BIN = ./bin
ASSETS = ./assets
SRC = ./src

MAIN = $(SRC)/common/main.tex

BUNDLE = andrew_vasilyev_software_developer_cv_$(shell date +'%y%m%d')
BUNDLE_EN = en_$(BUNDLE)
BUNDLE_RU = ru_$(BUNDLE)

CC = $(TEX) -output-directory=$(BIN)

all: $(BUNDLE_EN).pdf $(BUNDLE_RU).pdf

$(BUNDLE_EN).pdf: $(BIN)
	export TEXINPUTS=$$TEXINPUTS:$(SRC)/en && $(CC) -jobname=$(BUNDLE_EN) $(MAIN)

$(BUNDLE_RU).pdf: $(BIN)
	export TEXINPUTS=$$TEXINPUTS:$(SRC)/ru && $(CC) -jobname=$(BUNDLE_RU) $(MAIN)

$(BIN):
	mkdir -p $(BIN)

clean::
	rm -rf ./bin
