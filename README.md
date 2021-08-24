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

The `available` function can indicates if the `crypto` plugin is
available in your current execution state, it's recommended to call it
before trying to use any other function of that library in your app.

Several function takes an `uint_array` value as argument, it's an array
of type `Uint8Array` that you can obtain in this library with the
`Polyfill_crypto.new_array` function that will return an array of length
"len" that you can use in other functions.

### `Polyfill_crypto.get_random_values`

binding to
[? polyfill-crypto.getrandomvalues ?](https://github.com/kumavis/polyfill-crypto.getrandomvalues)

This function takes an `uint_array` value as argument, it will fill the
array with random values.

### `Polyfill_crypto.set`

This function takes 2 arguments: *i* and *x*: it will replace *i*-th
value of the `uint_array` given in parameter by the value *x*.

### `Polyfill_crypto.string_of_array`

This function is binding to the
[Js_of_ocaml.Typed_array.String.of_arrayBuffer](https://ocsigen.org/js_of_ocaml/3.1.0/api/Typed_array.String). It
takes an `uint_array` value as argument (that can be obtain with the
`Polyfill_crypto.buffer` function). This function return an `arrayBuffer
Js.t` value from the *Js_of_ocaml* library.
[Learn more about
Js_of_ocaml](https://ocsigen.org/js_of_ocaml/latest/manual/overview)
