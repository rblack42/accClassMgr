TERM    = spring2017

include classes/$(TERM)/class_list.mak

all:    syllabus

.PHONY: syllabus
syllabus:
	for dir in $(SECTIONS); do \
        (cd classes/$(TERM)/$$dir && $(MAKE) syllabus); \
    done
