import gleam/int
import gleam/io
import gleam/string
import internal/format as f

pub fn main() -> Nil {
  io.println("Hello from vars!")
  let a = 1
  let b = 2
  let c = a + b

  echo "C:" <> int.to_string(c)
  io.println("c: " <> f.format_int(c))

  // pipeline
  "Hello, Mike!" |> string.drop_end(1) |> string.drop_start(7) |> io.println

  // case statement
  let result = case int.random(5) {
    // Match specific values
    0 -> "Zero"
    1 -> "One"

    // Match any other value and assign it to a variable
    other -> "It is " <> int.to_string(other)
  }
  io.println(result)

  let person = get_school_person()
  case person {
    Teacher(name, subject) -> io.println("Teacher: " <> name <> " " <> subject)
    Student(name) -> io.println("Student: " <> name)
  }
}

pub type SchoolPerson {
  Teacher(name: String, subject: String)
  Student(name: String)
}

fn greet(person: SchoolPerson) -> String {
  case person {
    Teacher(name, subject) -> "Teacher: " <> name <> " " <> subject
    Student(name) -> "Student: " <> name
  }
}

pub fn get_school_person() -> SchoolPerson {
  let teacher = Teacher("John", "Math")
  let student = Student("Jane")

  echo teacher |> greet
  echo student |> greet
  // echo student.subject -> error

  teacher
}
