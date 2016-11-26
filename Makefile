# List of files for  each program or config.
# The list name can be used as a variable to do a "make install-<LIST_NAME>"

bash=bashrc bash_aliases bash_exports bash_functions bash_profile
git=gitconfig
vim=vimrc vim
tmux=tmux.conf

# List of programs files that will be copied by default.

FILES=bash git vim tmux
DEST_FOLER=~/

$(VERBOSE).SILENT:

CP_FILES=for file in $($(1)) ; do echo -n "Copying file $$file";	cp -r $$file $(DEST_FOLER).$$file; echo ", done."; done;


all: $(addprefix install-,$(FILES))
	echo "Copy complete.";

install-%:
	$(call CP_FILES,$(subst install-,,$@))
