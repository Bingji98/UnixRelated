# Problems related to Unix_based systems

![image](https://user-images.githubusercontent.com/61017530/201364691-e71c9d6c-c5ea-4818-afdf-585fa6541d69.png)


# Table of Contents
1. [Bash-completion](#bc)
2. [Bash Prompt and Colors](#bpc)
3. [Check Current Shell](#ccs)
4. [ZSH](#zsh)

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
set colored-completion-prefix on  # requires bash 4.4+
set colored-stats on  # requires bash 4.4+
set completion-ignore-case on
```

# Bash Prompt and Colors <a name="bpc"></a>

For general settings, please refer to [Bash - Prompt and Colors](https://blog.while-true-do.io/bash-prompt-and-colors/).

# Check current shell <a name="ccs"></a>
There are many different ways to display your current shell [Different Ways to Check Which Shell You are Using](https://www.geeksforgeeks.org/different-ways-to-check-which-shell-you-are-using-on-linux/), and the simplest way is using `readlink /proc/$$/exe`.

# ZSH <a name="zsh"></a>
If you want to switch your shell to zsh, bash, sh, etc., use the command `chsh -s /bin/zsh`. The operation might fail if you don't have the access, and you will end up with `You may not change the shell for 'XXX'`. Then, go ask for root permission. 

