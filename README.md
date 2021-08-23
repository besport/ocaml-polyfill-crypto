# ocaml-crypto

## What does ocaml-crypto do ?

This plugin allows you tu use sevral function form the `crypto` plugin
into your ocaml mobile app.

This plugin could be bind to servral repositories that define a specific
function if necessary, feel free to add binding form other `crypto`
Javascript library if you want : this plugin have for goal to combine
all of them into a single library.

## How to install and compile your project by using this plugin ?

You can use opam by pining the repository with:
```Shell
opam pin add crypto https://github.com/besport/ocaml-crypto

to compile your project, use:
```Shell
dune build @install
```

Finally, install the "crypto" plugin with:
```Shell
cordova plugin add crypto
```

## How to use it?

### `Crypto.get_random_values`

binding to
[polyfill-crypto.getrandomvalues](https://github.com/kumavis/polyfill-crypto.getrandomvalues)

[TODO]
