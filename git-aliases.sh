#!/bin/bash

_pull_or_push() {
  if [ $# -eq 2 ]; then
    git $1 $2 `git rev-parse --abbrev-ref HEAD`
  else
    git $1 origin `git rev-parse --abbrev-ref HEAD`
  fi
}
_pull() { _pull_or_push "pull" $@ }
_push() { _pull_or_push "push" $@ }

alias g=git
alias ga='git add'
alias gaa='git add --all'
alias gapa='git add --patch'
alias gau='git add --update'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'

alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbl='git blame -b -w'
alias gbr='git branch --remote'
alias gbnm='git branch --no-merged'
alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias gbda='git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'

alias gc='git commit -v'
alias gcs='git commit -S'
alias gcmsg='git commit -m'
alias gca='git commit -v -a'
alias gcam='git commit -a -m'
alias gcsm='git commit -s -m'
alias 'gc!'='git commit -v --amend'
alias 'gca!'='git commit -v -a --amend'
alias 'gcn!'='git commit -v --no-edit --amend'
alias 'gcan!'='git commit -v -a --no-edit --amend'
alias 'gcans!'='git commit -v -a -s --no-edit --amend'

alias gco='git checkout'
alias gcb='git checkout -b'
alias gcd='git checkout dev'
alias gcm='git checkout master'

alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'

alias gcl='git clone'
alias gclr='git clone --recursive'

alias gd='git diff'
alias gdca='git diff --cached'
alias gdw='git diff --word-diff'
alias gdt='git diff-tree --no-commit-id --name-only -r'

alias gf='git fetch'
alias gfo='git fetch origin'
alias gfa='git fetch --all --prune'

alias gg='git gui citool'
alias gga='git gui citool --amend'

alias gk='\gitk --all --branches'
alias gke='\gitk --all $(git log -g --pretty=%h)'


alias glg='git log --stat'
alias glgg='git log --graph'
alias glgp='git log --stat -p'
alias glo='git log --oneline --decorate'
alias glgm='git log --graph --max-count=10'
alias glgga='git log --graph --decorate --all'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias glol='git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias glola='git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --all'

alias gm='git merge'
alias gmom='git merge origin/master'
alias gmum='git merge upstream/master'

alias gmt='git mergetool --no-prompt'
alias gmtvim='git mergetool --no-prompt --tool=vimdiff'

alias gpull='_pull'

# git push aliases
alias gp='git push'
alias gpv='git push -v'
alias gpu='git push upstream'
alias gpd='git push --dry-run'
alias ggpush='git push origin $(git_current_branch)'
alias gpoat='git push origin --all && git push origin --tags'
alias gpsup='git push --set-upstream origin $(git_current_branch)'

# git rebase aliases
alias grb='git rebase'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'

# git stash aliases
alias gstp='git stash pop'
alias gsta='git stash save'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstc='git stash clear'
alias gstaa='git stash apply'
alias gsts='git stash show --text'

# git status aliases
alias gst='git status'
alias gss='git status -s'
alias gsb='git status -sb'

# git remote aliases
alias gr='git remote'
alias grv='git remote -v'
alias gra='git remote add'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grup='git remote update'
alias grset='git remote set-url'

alias gru='git reset --'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gpristine='git reset --hard && git clean -dfx'

alias gsi='git submodule init'
alias gsu='git submodule update'

alias gts='git tag -s'
alias gtv='git tag | sort -V'

alias gignore='git update-index --assume-unchanged'
alias gunignore='git update-index --no-assume-unchanged'

alias gclean='git clean -fd'
alias gcf='git config --list'
alias gdct='git describe --tags `git rev-list --tags --max-count=1`'
alias ghh='git help'
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias gcount='git shortlog -sn'
alias gsps='git show --pretty=short --show-signature'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'

alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
