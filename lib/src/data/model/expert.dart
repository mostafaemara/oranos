// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Expert {
  final String name;
  final String image;
  final bool isFav;
  final String rating;

  final String department;

  Expert(this.name, this.image, this.isFav, this.rating, this.department);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image,
      'isFav': isFav,
      'rating': rating,
      'department': department,
    };
  }

  factory Expert.fromMap(Map<String, dynamic> map) {
    return Expert(
      map['name'] as String,
      map['image'] as String,
      map['isFav'] as bool,
      map['rating'] as String,
      map['department'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Expert.fromJson(String source) =>
      Expert.fromMap(json.decode(source) as Map<String, dynamic>);
}
