[@@@js.stop]

val available : unit -> bool

[@@@js.start]

[@@@js.implem
let available () =
  Js_of_ocaml.Js.Optdef.test Js_of_ocaml.Js.Unsafe.global##.crypto]

val get_random_values : int array -> unit
  [@@js.global "window.crypto.getRandomValues"]

type crypto

val get_crypto : unit -> crypto [@@js.get "window.crypto"]

val get_random_values_v2 : crypto -> int array -> unit
  [@@js.call "getRandomValues"]
