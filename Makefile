## Simple pandoc makefile to export a collection of .md file to static site
# To run a static server localy, set STATIC_SERVER var
# The default is node-static, which can be installed with
#
# sudo npm install -g node-static
#

STATIC_SERVER := static

STATIC_PATH := ./docs/
IMAGES_PATH := ./imgs/
CSS_PATH := ./css/

FOLDERS := $(STATIC_PATH) $(IMAGES_PATH) $(CSS_PATH)
MD_FILES := $(shell find . -name "*.md")

HTML_FILES := $(addprefix $(STATIC_PATH), $(MD_FILES:.md=.html))
ASSETS := $(addprefix $(STATIC_PATH), $(IMAGES_PATH) $(CSS_PATH))

all: $(HTML_FILES) start_server

.PHONY: clean start_server all html

html: $(HTML_FILES)

start_server:
	cp ./index.html $(STATIC_PATH)
	$(STATIC_SERVER) $(STATIC_PATH) -p 8080

$(STATIC_PATH)%.html: %.md style.h.html | $(FOLDERS) $(ASSETS)
	pandoc $< -H style.h.html -o $@

$(ASSETS):
	cp -r $(IMAGES_PATH) $(STATIC_PATH)
	cp -r $(CSS_PATH) $(STATIC_PATH)

clean:
	rm -rf $(STATIC_PATH)

$(FOLDERS):
	mkdir -p $@
