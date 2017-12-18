all: install-wkhtmltopdf
	wkhtmltopdf index.html resume.pdf

# obviously this will only barely work for macOS, but should serve as a reminder
install-wkhtmltopdf:
	if ! which wkhtmltopdf > /dev/null ; then \
		brew cask install wkhtmltopdf ; \
	fi
