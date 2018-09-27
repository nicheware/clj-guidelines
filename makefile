.PHONY: all
SOURCE = docs/graphviz
DEST = docs/generated
DOT_NAMES = $(notdir $(wildcard $(SOURCE)/*.dot))
PNG_NAMES = $(patsubst %.dot, %.png, $(DOT_NAMES))
PNG_FILES = $(addprefix $(DEST)/, $(PNG_NAMES))

all: $(PNG_FILES)

$(DEST)/%.png: $(SOURCE)/%.dot
	dot -Tpng $< -o $@
