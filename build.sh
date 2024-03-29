#!/usr/bin/env bash

# pandoc cv.md -f markdown+emoji+multiline_tables   --citeproc \
# --bibliography ~/bibliography.bib --csl ~/apa-6th-edition.csl \
# --reference-doc ./cv_word_template.docx -o ./CV.docx \
# 	&& lowriter --headless --convert-to pdf ./CV.docx\
# 	&& xdg-open ./CV.pdf

pandoc cv.md -f markdown+emoji+multiline_tables \
--reference-doc ./cv_word_template.docx -o ./CV.docx \
  && libreoffice --headless --convert-to pdf ./CV.docx\
  && okular ./CV.pdf > /dev/null 2>&1 & 

# pandoc courses.md -f markdown+emoji+multiline_tables \
# --reference-doc ./cv_word_template.docx -o ./courses.docx \
#   && lowriter --headless --convert-to pdf ./courses.docx\
#   && xdg-open ./courses.pdf
