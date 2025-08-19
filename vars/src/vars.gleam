import gleam/io
import internal/format as f

pub fn main() -> Nil {
  io.println("Hello from vars!")
  let a = 1
  let b = 2
  let c = a + b

  io.println("c: " <> f.format_int(c))
}
