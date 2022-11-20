// ignore_for_file: unnecessary_brace_in_string_interps, non_constant_identifier_names, empty_catches

import 'dart:async';
import 'dart:convert';
import 'dart:io';

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

  static Future<Client> loadFromFile(File file) async {
    return Client.createFromJson(json.decode(await file.readAsString()));
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

class ClientFull extends Client {
  final String client_name;
  final String? phone_number;
  ClientFull(
    this.client_name, {
    super.full_name,
    required super.id,
    required super.username,
    this.phone_number,
  });
}
