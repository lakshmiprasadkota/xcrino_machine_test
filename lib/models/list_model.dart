// To parse this JSON data, do
//
//     final products = productsFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Products> productsFromMap(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromMap(x)));

String productsToMap(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Products {
  Products({
    required this.status,
    required this.type,
    required this.deleted,
    required this.id,
    required this.user,
    required this.text,
    required this.v,
    required this.source,
    required this.updatedAt,
    required this.createdAt,
    required this.used,
  });

  Status status;
  String type;
  bool deleted;
  String id;
  String user;
  String text;
  int v;
  String source;
  DateTime updatedAt;
  DateTime createdAt;
  bool used;

  factory Products.fromMap(Map<String, dynamic> json) => Products(
    status: Status.fromMap(json["status"]),
    type: json["type"],
    deleted: json["deleted"],
    id: json["_id"],
    user: json["user"],
    text: json["text"],
    v: json["__v"],
    source: json["source"],
    updatedAt: DateTime.parse(json["updatedAt"]),
    createdAt: DateTime.parse(json["createdAt"]),
    used: json["used"],
  );

  Map<String, dynamic> toMap() => {
    "status": status.toMap(),
    "type": type,
    "deleted": deleted,
    "_id": id,
    "user": user,
    "text": text,
    "__v": v,
    "source": source,
    "updatedAt": updatedAt.toIso8601String(),
    "createdAt": createdAt.toIso8601String(),
    "used": used,
  };
}

class Status {
  Status({
    required this.verified,
    required this.sentCount,
  });

  bool verified;
  int sentCount;

  factory Status.fromMap(Map<String, dynamic> json) => Status(
    verified: json["verified"],
    sentCount: json["sentCount"],
  );

  Map<String, dynamic> toMap() => {
    "verified": verified,
    "sentCount": sentCount,
  };
}
