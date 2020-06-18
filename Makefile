STATIC_PATH := ./static
PAGES_PATH := $(STATIC_PATH)/pages/
ASSETS_PATH := $(STATIC_PATH)/assets/
IMAGES_PATH := ./imgs
CSS_PATH := ./css

FOLDERS := $(STATIC_PATH) $(PAGES_PATH) $(ASSETS_PATH) $(IMAGES_PATH) $(CSS_PATH)

MD_FILES := $(shell find . -name "*.md")
HTML_FILES = $(MD_FILES:.md=.html)

# post.pdf: post.md fix-fig.tex
	# pandoc ./post.md  -H fix-fig.tex -o post.pdf
	# gio open post.pdf

all: $(HTML_FILES)

# $(STATIC_PATH)/$(IMAGES_PATH)
%.html: %.md style.h.html | $(FOLDERS)
	pandoc $< -H style.h.html -o $@

# cp ./post.html $(PAGES_PATH)
# cp -r $(IMAGES_PATH) $(ASSETS_PATH)
# cp -r $(CSS_PATH) $(ASSETS_PATH)

.PHONY: post.pdf post.html

clean:
	rm -f post.html
	rm -f post.pdf

$(FOLDERS):
	mkdir -p $@

clean_server:
	rm -rf $(PAGES_PATH)
	rm -rf $(ASSETS_PATH)

# $(STATIC_PATH)/$(IMAGES_PATH):
# 	mkdir -p $(STATIC_PATH)/$(IMAGES_PATH)