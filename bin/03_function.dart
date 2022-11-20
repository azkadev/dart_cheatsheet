// ignore_for_file: unnecessary_brace_in_string_interps, non_constant_identifier_names, empty_catches

void main(List<String> args) {
  print(calculate(59, 41));
  print(information(
    first_name: "Gibran",
    last_name: "Alazka",
    age: 15,
  ));
  print(repeat("azkadev"));
  print(repeatAdvance(
    "azkadev",
    isWithSpace: true,
  ));
  print(jsonToMessage(
    {
      "first_name": "azka",
      "username": "@azkadev"
    },
    media: {
      "first_name": "Nama Depan"
    }
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

String repeat(String data, [int count = 5]) {
  return data * count;
}

String repeatAdvance(
  String data, {
  int count = 5,
  bool isWithSpace = true,
}) {
  return ((isWithSpace) ? data += " " : data) * count;
}

String jsonToMessage(Map data, {Map media = const {}}) {
  String message = "";
  data.forEach((key, value) {
    try {
      if (value is Map || value is List) {
        if (value is Map) {
          message += "\n${media[key] ?? key}: ${jsonToMessage(value, media: media)}";
        } else {
          message += "\n${media[key] ?? key}: ${value}";
        }
      } else {
        if (media.containsKey(key)) {
          message += "\n${media[key]}: ${value}";
        } else {
          message += "\n${key}: ${value}";
        }
      }
    } catch (e) {}
  });
  return message;
}
