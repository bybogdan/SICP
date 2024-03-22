# SICP Study Notes

[SICP BOOK LINK](https://sarabander.github.io/sicp/html/index.xhtml)

**INSTALLATION**

- Download racket compiler from [link](https://download.racket-lang.org/)
- If not working, try mirror link [link](https://download.racket-lang.org/racket-8-12-aarch64-macosx-cs-dmg.html)
- Install it
- Open terminal and type `racket` to check if it is working
- If not working, add the path to the environment variable (Open your .bash_profile, .zshrc, or .profile file in your home directory with a text editor. For example, if you're using Zsh (the default shell in newer macOS versions), you'd open ~/.zshrc)

  ```bash
  export RACKET="/Applications/Racket v8.12/bin"
  export PATH="$SOME_OTHER_VARIABLE_IF_EXIST:$RACKET:$PATH"
  ```

- Save the file and run `source ~/.zshrc` or `source ~/.bash_profile` to apply the changes
- Now you can run `racket` in the terminal

**RUNNING THE EXAMPLE CODE**

```bash
racket sum_two_numbers.scm
```

**NOTES**

- File extension `.scm` is used for the [Scheme](https://www.scheme.org/) dialect of [Lisp](https://lisp-lang.org/)
