#target names
BASICS = 01_podstawy
MATH = 02_rownania
TABLES = 03_tabele
PICTURES = 04_obrazki
DIAGRAMS = 05_diagramy
LAYOUT = 06_uklad
REFER = 07_bibliografia
MULTIFILES = 08_wielePlikow

DOCS_DIR = docs
IMG_DIR = images

#target list
.PHONY: all basics math tables pictures convertImages diagrams layout refer multifiles

all: basics math tables pictures diagrams layout refer multifiles

basics: $(BASICS).pdf
math: $(MATH).pdf
tables: $(TABLES).pdf
pictures: $(PICTURES).pdf
diagrams: $(DIAGRAMS).pdf
layout: $(LAYOUT).pdf
refer: $(REFER).pdf
multifiles: $(MULTIFILES).pdf

$(BASICS).pdf: $(BASICS).ms | $(DOCS_DIR)
	groff -Kutf8 -mec -ms -Tdvi $(BASICS).ms > $(BASICS).dvi
	dvipdfm -cz 9 $(BASICS).dvi
	mv $(BASICS).pdf $(DOCS_DIR)
	rm $(BASICS).dvi

$(MATH).pdf: $(MATH).ms | $(DOCS_DIR)
	groff -Kutf8 -e -mec -ms -Tdvi $(MATH).ms > $(MATH).dvi
	dvipdfm -cz 9 $(MATH).dvi
	mv $(MATH).pdf $(DOCS_DIR)
	rm $(MATH).dvi

$(TABLES).pdf: $(TABLES).ms | $(DOCS_DIR)
	groff -Kutf8 -t -e -mec -ms -Tdvi $(TABLES).ms > $(TABLES).dvi
	dvipdfm -cz 9 $(TABLES).dvi
	mv $(TABLES).pdf $(DOCS_DIR)
	rm $(TABLES).dvi

$(PICTURES).pdf: $(PICTURES).ms | convertImages $(DOCS_DIR)
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

$(DIAGRAMS).pdf: $(DIAGRAMS).ms | $(DOCS_DIR)
	groff -Kutf8 -p -e -mec -ms -Tdvi $(DIAGRAMS).ms > $(DIAGRAMS).dvi
	dvipdfm -cz 9 $(DIAGRAMS).dvi
	mv $(DIAGRAMS).pdf $(DOCS_DIR)
	rm $(DIAGRAMS).dvi

$(LAYOUT).pdf: $(LAYOUT).ms | $(DOCS_DIR)
	groff -Kutf8 -mec -ms -Tdvi $(LAYOUT).ms > $(LAYOUT).dvi
	dvipdfm -cz 9 $(LAYOUT).dvi
	mv $(LAYOUT).pdf $(DOCS_DIR)
	rm $(LAYOUT).dvi

$(REFER).pdf: $(REFER).ms | $(DOCS_DIR)
	preconv -Dutf8 $(REFER).ms | refer | groff -Kutf8 -mec -ms -Tdvi > $(REFER).dvi
	dvipdfm -cz 9 $(REFER).dvi
	mv $(REFER).pdf $(DOCS_DIR)
	rm $(REFER).dvi

$(MULTIFILES).pdf: $(MULTIFILES).ms | $(DOCS_DIR)
	soelim $(MULTIFILES).ms | groff -Kutf8 -mec -ms -Tdvi > $(MULTIFILES).dvi
	dvipdfm -cz 9 $(MULTIFILES).dvi
	mv $(MULTIFILES).pdf $(DOCS_DIR)
	rm $(MULTIFILES).dvi

# make directories
$(DOCS_DIR) :
	mkdir $@

$(IMG_DIR) :
	mkdir $@
