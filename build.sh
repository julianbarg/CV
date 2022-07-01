#!/usr/bin/env bash

pandoc cv.md -f markdown+emoji+multiline_tables   --citeproc \
--bibliography ~/bibliography.bib --csl ~/apa-6th-edition.csl \
--reference-doc ./cv_word_template.docx -o ./CV.docx \
	&& libreoffice.writer --headless --convert-to pdf ./CV.docx\
	&& xdg-open ./CV.pdf