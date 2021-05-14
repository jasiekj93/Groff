BASICS = basics
MATH = math

.PHONY: all basics math

all: basics math

basics:
	groff -Kutf8 -mec -ms -Tdvi $(BASICS).ms > $(BASICS).dvi
	dvipdfm -cz 9 $(BASICS).dvi
	rm $(BASICS).dvi

math:
	groff -Kutf8 -e -mec -ms -Tdvi $(MATH).ms > $(MATH).dvi
	dvipdfm -cz 9 $(MATH).dvi
	rm $(MATH).dvi
