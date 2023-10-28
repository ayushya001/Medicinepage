// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MedicalStoreModel {
  final String store;
  final String imageUrl;
  final String rating;
  final String address;
  final String id;
  MedicalStoreModel({
    required this.store,
    required this.imageUrl,
    required this.rating,
    required this.address,
    required this.id,
  });

  MedicalStoreModel copyWith({
    String? store,
    String? imageUrl,
    String? rating,
    String? address,
    String? id,
  }) {
    return MedicalStoreModel(
      store: store ?? this.store,
      imageUrl: imageUrl ?? this.imageUrl,
      rating: rating ?? this.rating,
      address: address ?? this.address,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'store': store,
      'imageUrl': imageUrl,
      'rating': rating,
      'address': address,
      'id': id,
    };
  }

  factory MedicalStoreModel.fromMap(Map<String, dynamic> map) {
    return MedicalStoreModel(
      store: map['store'] as String,
      imageUrl: map['imageUrl'] as String,
      rating: map['rating'] as String,
      address: map['address'] as String,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MedicalStoreModel.fromJson(String source) =>
      MedicalStoreModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MedicalStoreModel(store: $store, imageUrl: $imageUrl, rating: $rating, address: $address, id: $id)';
  }

  @override
  bool operator ==(covariant MedicalStoreModel other) {
    if (identical(this, other)) return true;

    return other.store == store &&
        other.imageUrl == imageUrl &&
        other.rating == rating &&
        other.address == address &&
        other.id == id;
  }

  @override
  int get hashCode {
    return store.hashCode ^
        imageUrl.hashCode ^
        rating.hashCode ^
        address.hashCode ^
        id.hashCode;
  }
}
