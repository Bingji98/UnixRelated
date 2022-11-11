# Problems related to Unix_based systems

![image](https://user-images.githubusercontent.com/61017530/201364691-e71c9d6c-c5ea-4818-afdf-585fa6541d69.png)


# Table of Contents
1. [Bash-completion](#bc)


# Bash-completion <a name="bc"></a>
In bash, when using "tab" to complete commands, we may end up only showing different possibilities, but not being able to choose any of them. If you want it to work similarly as it is in zsh, you could execute the next commands:

```bash
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
```

If you also want to have autocompletions on commands with a common prefix, and at the same time, valid every time you log in, write the following commands in `.inputrc` and reload it by `bind -f ~/.inputrc`.

```bash
set show-all-if-ambiguous on
TAB:menu-complete
set menu-complete-display-prefix on
set colored-completion-prefix on
set colored-stats on
set completion-ignore-case on
```
