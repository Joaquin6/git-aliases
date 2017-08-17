ALOCSH=$ADOTDIR/repos/https-COLON--SLASH--SLASH-github.com-SLASH-joaquin6-SLASH-git-aliases.git

source $ALOCSH/git-aliases.sh

# to remind yourself of an alias (given some part of it)
gshowa () { /usr/bin/grep --color=always -i -a1 $@ $ALOCSH/git-aliases.sh | grep -v '^\s*$' | less -FSRXc ; }
