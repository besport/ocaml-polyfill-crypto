[@@@js.stop]

val available : unit -> bool

type array_buffer = Js_of_ocaml.Typed_array.arrayBuffer Js_of_ocaml.Js.t

[@@@js.start]

[@@@js.implem
let available () =
  Js_of_ocaml.Js.Optdef.test Js_of_ocaml.Js.Unsafe.global##.crypto]

[@@@js.implem
type array_buffer = Js_of_ocaml.Typed_array.arrayBuffer Js_of_ocaml.Js.t]

[@@@js.implem let array_buffer_of_js = Obj.magic]

[@@@js.implem let array_buffer_to_js = Obj.magic]

type uint_array

val new_array : len:int -> uint_array [@@js.new "Uint8Array"]

val buffer : uint_array -> array_buffer [@@js.get]

val set : uint_array -> i:int -> x:int -> unit [@@js.call]

val array_buffer_to_string : array_buffer -> string [@@js.call "toString"]

[@@@js.stop]

val string_of_array_buffer : array_buffer -> string

[@@@js.start]

[@@@js.implem
let string_of_array_buffer buffer =
  Js_of_ocaml.Typed_array.String.of_arrayBuffer buffer]

val get_random_values : uint_array -> unit
  [@@js.global "window.crypto.getRandomValues"]
