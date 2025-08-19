import gleam/int
import gleam/io

pub fn format_int(int: Int) -> String {
  io.println("format_int: " <> int.to_string(int))
  int.to_string(int)
}
