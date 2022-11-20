// ignore_for_file: unnecessary_brace_in_string_interps, non_constant_identifier_names

void main(List<String> args) {
  print(calculate(59, 41));
  print(information(
    first_name: "Gibran",
    last_name: "Alazka",
    age: 15,
  ));
}

num calculate(num number_one, num number_two) {
  return number_one + number_two;
}

String information({
  required String first_name,
  String? last_name,
  String? phone_number,
  required int age,
}) {
  String message = "Information:";
  message += "\nFull Name: ${first_name}";
  if (last_name != null) {
    message += " ${last_name}";
  }
  if (phone_number != null) {
    message += "\n${phone_number}";
  }
  message += "\nAge: ${age}";
  return message;
}
