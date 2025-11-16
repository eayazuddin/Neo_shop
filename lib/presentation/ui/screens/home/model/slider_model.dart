// To parse this JSON data, do
//
//     final sliderModel = sliderModelFromJson(jsonString);

import 'dart:convert';

SliderModel sliderModelFromJson(String str) => SliderModel.fromJson(json.decode(str));

String sliderModelToJson(SliderModel data) => json.encode(data.toJson());

class SliderModel {
  int? id;
  String? title;
  String? shortDes;
  String? price;
  String? image;
  int? productId;
  DateTime? createdAt;
  DateTime? updatedAt;

  SliderModel({
    this.id,
    this.title,
    this.shortDes,
    this.price,
    this.image,
    this.productId,
    this.createdAt,
    this.updatedAt,
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) => SliderModel(
    id: json["id"],
    title: json["title"],
    shortDes: json["short_des"],
    price: json["price"],
    image: json["image"],
    productId: json["product_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "short_des": shortDes,
    "price": price,
    "image": image,
    "product_id": productId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
