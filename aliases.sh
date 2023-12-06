# Git
alias gs="git status -sb"
alias ga="git add"
alias 'ga.'="git add ."
gapat() {
    local search_terms=$(echo "$*" | tr ' ' '|')
    git status -sb | sed '1d' | grep -E "$search_terms" | awk '{print $2}' | xargs git add
}
gab() {
    git add .
    git restore --staged "$@"
}
alias gc="git commit -m"
gac () {
    if (( $# < 2 )); then
        echo "Usage: gac <files to add> <commit message>"
        return 1
    fi

    local files_to_add=("${(@)@[1,-2]}")
    local commit_message="${@[-1]}"

    git add "${files_to_add[@]}" && git commit -m "$commit_message"
}
alias 'ga.c'="git add . && git commit -m"
alias gcamnoe="git commit --amend --no-edit"
alias gp="git push"
gpsu() {
    git push --set-upstream origin "$(git branch --show-current)"
}
alias gr="git restore"
alias 'gr.'="git restore ."
alias grs="git restore --staged"
alias 'grs.'="git restore --staged ."
