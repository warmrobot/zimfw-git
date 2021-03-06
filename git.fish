#
# Git aliases.
#

#
# Settings
#

# Log colour scheme has yellow commit hash, bold blue author, cyan date, auto ref names
# See https://git-scm.com/docs/pretty-formats
set _git_log_medium_format '%C(bold)Commit:%C(reset) %C(yellow)%H%C(auto)%d%n%C(bold)Author:%C(reset) %C(bold blue)%an <%ae>%n%C(bold)Date:%C(reset)   %C(cyan)%ai (%ar)%C(reset)%n%+B'
set _git_log_oneline_format '%C(yellow)%h%C(reset) %s%C(auto)%d%C(reset)'
set _git_log_fullgraph_format '%C(yellow)%h%C(reset) %<|(60,trunc)%s %C(bold blue)<%an> %C(reset)%C(cyan)(%ar)%C(auto)%d%C(reset)%n'
set _git_log_brief_format '%C(yellow)%h%C(reset) %s%n%C(bold blue)(%ar by %an)%C(auto)%d%C(reset)%n'

#
# Aliases
#
alias g='git'


# This help
alias gh='cat ~/.config/fish/conf.d/git.fish | grep'

# comittizen
alias cz='git-cz'

# Branch (b)
alias gb='git branch'
alias gbc='git checkout -b'
alias gbl='git branch -vv'
alias gbL='git branch --all -vv'
alias gbm='git branch --move'
alias gbM='git branch --move --force'
alias gbs='git show-branch'
alias gbS='git show-branch --all'
alias gbx='git-branch-delete-interactive'
alias gbX='git-branch-delete-interactive --force'

# Commit (c)
alias gc='git commit --verbose'
alias gca='git commit --verbose --all'
alias gcm='git commit --message'
alias gco='git checkout'
alias gcO='git checkout --patch'
alias gcf='git commit --amend --reuse-message HEAD'
alias gcF='git commit --verbose --amend'
alias gcp='git cherry-pick --ff'
alias gcP='git cherry-pick --no-commit'
alias gcr='git revert'
alias gcR='git reset "HEAD^"'
alias gcs='git show --pretty=format:"{_git_log_medium_format}"'
alias gcl='git-commit-lost'
alias gcS='git commit -S'
alias gpS='git show --pretty=short --show-signature'

# Conflict (C)
alias gCl='git diff --diff-filter=U --name-only --no-pager'
alias gCa='git add (gCl)'
alias gCe='git mergetool (gCl)'
alias gCo='git checkout --ours --'
alias gCO='gCo (gCl)'
alias gCt='git checkout --theirs --'
alias gCT='gCt (gCl)'

# Data (d)
alias gd='git ls-files'
alias gdc='git ls-files --cached'
alias gdx='git ls-files --deleted'
alias gdm='git ls-files --modified'
alias gdu='git ls-files --other --exclude-standard'
alias gdk='git ls-files --killed'
alias gdi='git status --porcelain --short --ignored | sed -n "s/^!! //p"'

# Fetch (f)
alias gf='git fetch'
alias gfc='git clone'
alias gfm='git pull'
alias gfr='git pull --rebase'
alias gfu='git fetch --all --prune; git merge --ff-only @\{u\}'

# Grep (g)
alias gg='git grep'
alias ggi='git grep --ignore-case'
alias ggl='git grep --files-with-matches'
alias ggL='git grep --files-without-match'
alias ggv='git grep --invert-match'
alias ggw='git grep --word-regexp'

# Index (i)
alias gia='git add'
alias giA='git add --patch'
alias giu='git add --update'
alias gid='git diff --no-ext-diff --cached'
alias giD='git diff --no-ext-diff --cached --word-diff'
alias gir='git reset'
alias giR='git reset --patch'
alias gix='git rm --cached -r'
alias giX='git rm --cached -rf'

# Log (l)
alias gl='git log --topo-order --pretty=format:"{_git_log_medium_format}"'
alias gls='git log --topo-order --stat --pretty=format:"{_git_log_medium_format}"'
alias gld='git log --topo-order --stat --patch --full-diff --pretty=format:"{_git_log_medium_format}"'
alias glo='git log --topo-order --pretty=format:"{_git_log_oneline_format}"'
alias glg='git log --topo-order --all --graph --pretty=format:"{_git_log_oneline_format}%n"'
alias glG='git log --topo-order --all --graph --pretty=format:"{_git_log_fullgraph_format}"'
alias glb='git log --topo-order --pretty=format:"{_git_log_brief_format}"'
alias glc='git shortlog --summary --numbered'
alias glS='git log --topo-order --show-signature --pretty=format:"{_git_log_medium_format}"'

# Merge (m)
alias gm='git merge'
alias gmC='git merge --no-commit'
alias gmF='git merge --no-ff'
alias gma='git merge --abort'
alias gmt='git mergetool'

# Push (p)
alias gp='git push'
alias gpf='git push --force'
alias gpa='git push --all'
alias gpA='git push --all; git push --tags'
alias gpt='git push --tags'
# since Git 2.22 (Q2 2019): git branch --show-current
alias gpc='git push --set-upstream origin (git branch --show-current)'
alias gpp='git pull origin (git branch --show-current); git push origin (git branch --show-current)'

# Rebase (r)
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias grs='git rebase --skip'

# Remote (R)
alias gR='git remote'
alias gRl='git remote --verbose'
alias gRa='git remote add'
alias gRx='git remote rm'
alias gRm='git remote rename'
alias gRu='git remote update'
alias gRp='git remote prune'
alias gRs='git remote show'

# Stash (s)
alias gs='git stash'
alias gsa='git stash apply'
alias gsx='git stash drop'
alias gsX='git-stash-clear-interactive'
alias gsl='git stash list'
alias gsL='git-stash-dropped'
alias gsd='git stash show --patch --stat'
alias gsp='git stash pop'
alias gsr='git-stash-recover'
alias gss='git stash save --include-untracked'
alias gsS='git stash save --patch --no-keep-index'
alias gsw='git stash save --include-untracked --keep-index'
alias gsu='git stash show --patch | git apply --reverse'

# Submodule (S)
alias gS='git submodule'
alias gSa='git submodule add'
alias gSf='git submodule foreach'
alias gSi='git submodule init'
alias gSI='git submodule update --init --recursive'
alias gSl='git submodule status'
alias gSm='git-submodule-move'
alias gSs='git submodule sync'
alias gSu='git submodule foreach git pull origin master'
alias gSx='git-submodule-remove'

# Tag (t)
alias gt='git tag'
alias gts='git tag --sign'
alias gtv='git verify-tag'
alias gtx='git tag --delete'

# Working tree (w)
alias gws='git status --short'
alias gwS='git status'
alias gwd='git diff --no-ext-diff'
alias gwD='git diff --no-ext-diff --word-diff'
alias gwr='git reset --soft'
alias gwR='git reset --hard'
alias gwc='git clean --dry-run'
alias gwC='git clean -d --force'
alias gwx='git rm -r'
alias gwX='git rm -rf'

# Misc
alias g..='cd "(git-root || print .)"'
