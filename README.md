# My favourite aliases to work with Git
This README introduces my favorite Git aliases to streamline daily tasks and enhance productivity.

Hi there! I'm Rods and I work as a developer.

I use Git a lot. Like every day. For work and school.

In doing so, there's lots of repetitive commands that I run multiple times on a daily basis.

Take `git status` for instance. I need to use this command every day in order to organise my work -- see which files I have changed, decide what files to bundle together in a commit, or even when resuming work from the previous day and I need to remember which files I was working on.

Now, typing `git status` might not sound that big of a deal. But having to type it multiple times a day, every day, piles up real quick.

So I came up with a solution to that. It uses the concept of _shell aliases_, and it's like assigning shorter nicknames for a command - or sequence of commands - that are invoked via command line.

In the case of `git status`, I use the alias `gs` instead, which is easy to remember and only two characters short! 🤩

Below I'll leave a showcase of my most used/liked aliases, and at the end of this README you'll find instructions on how to use my aliases (or even create your own!).

Happy coding!

## Top picks showcase
### `ga.c` - add everything for staging and commit
This one is pretty handy as it mashes together probably the two most used git commands of all time: `git add .` and `git commit -m <commit_message>`.
In this shortened version, all you have to do is to invoke `ga.c` followed by a commit message, and hey presto! Everything in your working tree is ready to be pushed to the remote!

### `gapat` - add for staging all files that match a specific pattern
...

### `gab` - add for staging everything BUT a specific file
...

### `gpsu` - push a new local branch to the remote repository
Do you ever start working on a new branch in your pc, and when the time comes to commit and push the work you've done, you realise you'll have to first create the branch in the remote repository before you can push your commits? Fear not, for this alias is for those of us!

This alias is equivalent to `git push --set-upstream origin your_new_branch_name_here`

What's cool about this alias is that you don't even need to type in the name of the new branch - the alias will take care of that for you 😉

...

## How to use these aliases

1. Open your shell's configuration file (e.g., `~/.zshrc` for Zsh or `~/.bashrc` for Bash).
2. Copy and paste the aliases you want to use.
3. Save and close the file.
4. Apply changes by reopening the terminal or running `source ~/.zshrc` (or the equivalent config file).

Feel free to use my aliases as-is or customize them to fit your workflow. I'd love to hear about new alias ideas that make our daily tasks as developers more efficient and enjoyable! Don't hesitate to reach out with your suggestions.

