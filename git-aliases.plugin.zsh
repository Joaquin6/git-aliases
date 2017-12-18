ALOCSH=$ADOTDIR/bundles/Joaquin6/git-aliases

source $ALOCSH/git-aliases.sh

# to remind yourself of an alias (given some part of it)
gshowa()
{
  if [ -z "$1" ]; then
    echo "You must supply an argument to show aliases"
  else
    /usr/bin/grep --color=always -i -a1 $@ $ALOCSH/git-aliases.sh | grep -v '^\s*$' | less -FSRXc ;
  fi
}
