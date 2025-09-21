# jdoc

Use janet's `doc` macro from the command line to see Janet
docstrings...with convenient completion for supported shells.

![jdoc terminal demo](jdoc-terminal-demo.png?raw=true "jdoc terminal demo")

## Installation

There are a few ways installation can be performed.  Choose one, but
note that the uninstallation process is likely to end up being
different.  See the [Uninstallation section](#uninstallation) later in
this document for details.

### Via `jeep`

```
jeep install https://github.com/sogaiu/jdoc
```

### Via `jpm`

```
jpm install https://github.com/sogaiu/jdoc
```

### Via `janet`'s `bundle/*` functionality

```
git clone https://github.com/sogaiu/jdoc
cd jdoc
janet --install .
```

### Via the `install` script

```
git clone https://github.com/sogaiu/jdoc
cd jdoc
janet install
```

Note that if you haven't already modified your `PATH` to account for
where `janet`'s `bundle/*` functionality stores scripts, you may need
to do so.  The output of the relevant commands above should indicate
where the script ended up.

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

## Uninstallation

Depending on how installation was performed, the procedure to follow
may differ.

I don't usually remember what method was used so I first do:

```
jpm list-installed
```

and check the resulting list for `jdoc`.  If `jdoc` appears there, then
uninstallation should be:

```
jpm uninstall jdoc
```

If `jdoc` wasn't in the output of `jpm list-installed`, then I typically
do:

```
janet --list
```

If `jdoc` appears in that list, then uninstallation should be done by:

```
janet --uninstall jdoc
```

or if using `jeep`:

```
jeep uninstall
```

Note that with a proper installation, I don't think `jdoc` should
appear in the output of both `jpm list-installed` and `janet --list`,
but if you want to be on the careful side, you might consider running
both commands and examining their respective output before attempting
uninstallation commands.

