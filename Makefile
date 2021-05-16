#target names
BASICS = 01_basics
MATH = 02_math
TABLES = 03_tables
PICTURES = 04_pictures
DIAGRAMS = 05_diagrams
LAYOUT = 06_layout

DOCS_DIR = docs
IMG_DIR = images

#target list
.PHONY: all basics math tables pictures convertImages diagrams layout

all: basics math tables pictures diagrams layout

basics: $(BASICS).ms
math: $(MATH).ms
tables: $(TABLES).ms
pictures: $(PICTURES).ms
diagrams: $(DIAGRAMS).ms
layout: $(LAYOUT).ms

$(BASICS).ms: | $(DOCS_DIR)
	groff -Kutf8 -mec -ms -Tdvi $(BASICS).ms > $(BASICS).dvi
	dvipdfm -cz 9 $(BASICS).dvi
	mv $(BASICS).pdf $(DOCS_DIR)
	rm $(BASICS).dvi

$(MATH).ms: | $(DOCS_DIR)
	groff -Kutf8 -e -mec -ms -Tdvi $(MATH).ms > $(MATH).dvi
	dvipdfm -cz 9 $(MATH).dvi
	mv $(MATH).pdf $(DOCS_DIR)
	rm $(MATH).dvi

$(TABLES).ms: | $(DOCS_DIR)
	groff -Kutf8 -t -e -mec -ms -Tdvi $(TABLES).ms > $(TABLES).dvi
	dvipdfm -cz 9 $(TABLES).dvi
	mv $(TABLES).pdf $(DOCS_DIR)
	rm $(TABLES).dvi

$(PICTURES).ms: | convertImages $(DOCS_DIR)
	groff -Kutf8 -t -e -mec -ms -Tdvi $(PICTURES).ms > $(PICTURES).dvi
	dvipdfm -cz 9 $(PICTURES).dvi
	mv $(PICTURES).pdf $(DOCS_DIR)
	rm $(PICTURES).dvi

#convert pictures
IMAGE_LIST = \
mops \

convertImages: | $(IMG_DIR)
	for picture in $(IMAGE_LIST); do \
		convert $(IMG_DIR)/$$picture.jpeg $(IMG_DIR)/$$picture.ps; \
	done

$(DIAGRAMS).ms: | $(DOCS_DIR)
	groff -Kutf8 -p -e -mec -ms -Tdvi $(DIAGRAMS).ms > $(DIAGRAMS).dvi
	dvipdfm -cz 9 $(DIAGRAMS).dvi
	mv $(DIAGRAMS).pdf $(DOCS_DIR)
	rm $(DIAGRAMS).dvi

$(LAYOUT).ms: | $(DOCS_DIR)
	groff -Kutf8 -mec -ms -Tdvi $(LAYOUT).ms > $(LAYOUT).dvi
	dvipdfm -cz 9 $(LAYOUT).dvi
	mv $(LAYOUT).pdf $(DOCS_DIR)
	rm $(LAYOUT).dvi

# make directories
$(DOCS_DIR) :
	mkdir $@

$(IMG_DIR) :
	mkdir $@
