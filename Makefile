TARGET = dok1

.PHONY: all

all:
	groff -Kutf8 -e -mec -ms -Tdvi $(TARGET).ms > $(TARGET).dvi
	dvipdfm -cz 9 $(TARGET).dvi
	rm $(TARGET).dvi
