BASICS = basics
MATH = math
TABLES = tables

.PHONY: all basics math tables

all: basics math tables

basics:
	groff -Kutf8 -mec -ms -Tdvi $(BASICS).ms > $(BASICS).dvi
	dvipdfm -cz 9 $(BASICS).dvi
	rm $(BASICS).dvi

math:
	groff -Kutf8 -e -mec -ms -Tdvi $(MATH).ms > $(MATH).dvi
	dvipdfm -cz 9 $(MATH).dvi
	rm $(MATH).dvi

tables:
	groff -Kutf8 -t -e -mec -ms -Tdvi $(TABLES).ms > $(TABLES).dvi
	dvipdfm -cz 9 $(TABLES).dvi
	rm $(TABLES).dvi