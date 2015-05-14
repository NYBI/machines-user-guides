USER_GUIDES:= ml-laser-rouge.html

ASCIIDOC_JBS:=../asciidoc-job-breakdown-sheet/rules.mk

all: $(ASCIIDOC_JBS) $(USER_GUIDES)

$(ASCIIDOC_JBS):
	cd .. && git clone git@github.com:loic-fejoz/asciidoc-job-breakdown-sheet.git

include $(ASCIIDOC_JBS)

clean:
	rm -f *~

distclean: clean
	rm -f $(USER_GUIDES)
