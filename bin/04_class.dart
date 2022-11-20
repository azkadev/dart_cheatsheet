// ignore_for_file: unnecessary_brace_in_string_interps, non_constant_identifier_names, empty_catches

import 'dart:async';

void main(List<String> args) {
  Client client = Client(
    id: "askoas",
    full_name: "Gibran Alazka",
    username: "azkadev",
  );
  print(client.toJson());
}

class Client {
  final String id;
  late String full_name;
  late String username;
  final DateTime joinDatetime = DateTime.now();
  Client({
    required this.id,
    this.full_name = "",
    required this.username,
  });

  factory Client.createFromJson(Map data) {
    return Client(
      id: data["id"],
      full_name: data["full_name"],
      username: data["username"],
    );
  }

  String get toMessage {
    return "Client:";
  }

  Map toJson() {
    return {
      "id": id,
      "full_name": full_name,
      "username": username,
      "join_date_time": joinDatetime.millisecondsSinceEpoch,
    };
  }

  /// replace
  @override
  String toString() {
    return "alow manies";
  }
}
