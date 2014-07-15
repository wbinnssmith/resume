all: resume.html

resume.css: resume.styl
	stylus resume.styl

resume.html: resume.md resume.css
	pandoc -f markdown_github -c resume.css -o $@ $<

