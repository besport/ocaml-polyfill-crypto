# ocaml-polyfill-crypto

## What does ocaml-polyfill-crypto do ?

This plugin allows you to use several function from the `polyfill-crypto` plugin
into your ocaml mobile app.

This plugin could be bound to serevral repositories that define a specific
function if necessary, feel free to add binding form other `polyfill-crypto`
Javascript library if you want : this plugin has for goal to combine
all of them into a single library.

## How to install and compile your project by using this plugin ?

You can use opam by pining the repository with:
```Shell
opam pin add polyfill-crypto https://github.com/besport/ocaml-polyfill-crypto

to compile your project, use:
```Shell
dune build @install
```

Finally, install the "polyfill-crypto" plugin with:
```Shell
cordova plugin add polyfill-crypto
```

## How to use it?

### `Polyfill_crypto.get_random_values`

binding to
[polyfill-crypto.getrandomvalues](https://github.com/kumavis/polyfill-crypto.getrandomvalues)

[TODO]
