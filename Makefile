gzip_html: copy_static
	@echo gzipping html
	find pub -type f -name '*.html' | parallel zopfli -v --i512

copy_static:
	@echo Copying static
	cp -R static/* pub/

default: copy_static gzip_html
