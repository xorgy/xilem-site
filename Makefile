copy_static:
	@echo Copying static
	cp -R static/* pub/

default: copy_static
