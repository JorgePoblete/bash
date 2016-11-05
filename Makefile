DEST_FOLER=~/
FILES=bashrc bash_aliases bash_exports bash_functions bash_profile vimrc vim gitconfig
$(VERBOSE).SILENT:

all:
	for file in $(FILES) ; do \
		echo "Copiying file $$file."; \
		cp -r $$file $(DEST_FOLER).$$file; \
	done;
