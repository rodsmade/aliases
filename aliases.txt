# Git
alias gs="git status -sb"
ga() {
    git add "$@" && gs
}
alias 'ga.'="git add ."
gapat() {
    local search_terms=$(echo "$*" | tr ' ' '|')
    git status -sb | sed '1d' | grep -E "$search_terms" | awk '{print $2}' | xargs git add
    gs
}
gab() {
    # Check if the number of arguments is zero
    if [ "$#" -eq 0 ]; then
        echo "Error: No files specified to unstage. Aborting."
        return 1  # Return a non-zero exit code to indicate failure
    fi

    git add .
    git restore --staged "$@"
    gs
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
gacp () {
  git add . && git commit -m "$1" && git push
}
alias gcamnoe="git commit --amend --no-edit"
alias gp="git push"
gpsu() {
  git push --set-upstream origin "$(git branch --show-current)"
}
alias gr="git restore"
alias 'gr.'="git restore ."
alias grs="git restore --staged"
alias 'grs.'="git restore --staged ."
