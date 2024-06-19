# jdoc

Use janet's `doc` from the command line...with convenient completion
for supported shells.

## Installation

Using jpm:

```
jpm install https://github.com/sogaiu/jdoc
```

This should make the `jdoc` command available on `PATH`.

## Usages

### See Docstring for Specific Identifier

```
$ jdoc ev/sleep


    cfunction
    src/core/ev.c on line 2891, column 1

    (ev/sleep sec)

    Suspend the current fiber for sec seconds without blocking the
    event loop.
```

### See Candidates that have Docstrings

```
$ jdoc "ev"


    Bindings:

    ev/call ev/cancel ev/capacity ev/chan ev/chan-close ev/chunk
    ev/close ev/count ev/deadline ev/do-thread ev/full ev/gather
    ev/give ev/give-supervisor ev/go ev/read ev/rselect ev/select
    ev/sleep ev/spawn ev/spawn-thread ev/take ev/thread ev/thread-chan
    ev/with-deadline ev/write eval eval-string even? every? forever
    reverse reverse! string/reverse tracev



    Dynamics:


    Use (doc sym) for more information on a binding.
```

### See Some Docstring

```
$ jdoc

...insert some docstring here...
```

## Shell Completion Use and Setup

The identifier argument to `jdoc` can be completed if using the bash /
fish / zsh shells with appropriate configuration.

So for example, pressing `TAB` after entering `jdoc j` might yield the
output:

```
janet/build        janet/version      juxt*
janet/config-bits  juxt
```

To set this up, invoke `jdoc` with one of the following for the
relevant shell:

* `--bash-completion`
* `--fish-completion`
* `--zsh-completion`

Put the resulting output in a location appropriate for the shell in
use.

Below are some hints about where such locations might be:

* [bash](https://github.com/scop/bash-completion/blob/master/README.md#faq) --
  look for `Where should I install my own local completions?`
* [fish](https://fishshell.com/docs/current/completions.html#where-to-put-completions)
* [zsh](https://zsh.sourceforge.io/Doc/Release/Completion-System.html) -- good luck :P
