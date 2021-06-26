# general
alias v="nvim"
alias c="clear"
alias serve="http-server"

# git
AWK_COMMIT_HASH='/^commit/{
  commit_hash=$NF
  getline
  commit_user=$NF
  if (commit_user !~ git_user) {
    print commit_hash
    exit 0
  }
}'

alias last_commit="git log | awk -v git_user='$(git config user.email)' '${AWK_COMMIT_HASH}'"
alias grl="git rebase -i $(last_commit)"

alias gs="git status"
alias gl="git log --graph --pretty"
alias gc="git commit -m"
alias gp="git push"

# npm
alias nv="npm view . versions"
alias ni="npm install --save"
alias nid="npm install --save-dv"

# npm scripts
alias t="npm run test -- --testPathPattern"
alias s="npm run storybook"
alias dev="npm run dev"
alias b="npm run build"
alias nr="npm run"

# docker
alias d="docker"
alias dri="docker run -it"
alias drd="docker run -dt"
alias db="docker build -t"
