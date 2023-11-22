// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:faenonibeqwa/utils/base/app_image.dart';

class TripModel {
  String? id;
  final String nameTrip;
  final String imageTrip;
  final num price;
  final String description;

  TripModel({
    this.id,
    required this.nameTrip,
    required this.imageTrip,
    required this.price,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nameTrip': nameTrip,
      'imageTrip': imageTrip,
      'price': price,
      'description': description,
    };
  }

  factory TripModel.fromMap(dynamic map) {
    return TripModel(
      id: map['id'] as String,
      nameTrip: map['nameTrip'] as String,
      imageTrip: map['imageTrip'] as String,
      price: map['price'] as num,
      description: map['description'] as String,
    );
  }
}

List<TripModel> tripList = [
  TripModel(
    id: '1',
    nameTrip: 'حديقة الحيوان',
    imageTrip: AppImage.testImage,
    price: 100,
    description:
        'هذه الرحله مخصصه ل حديقة الحيوان من أجل رؤية المخلوقات المختلفه التي خلقها الله ونرى ابداع الخالق فى خلقه',
  ),
  TripModel(
    id: '2',
    nameTrip: 'جامعة الازهر',
    imageTrip: AppImage.testImage,
    price: 150,
    description: 'لا يوجد وصف',
  ),
  TripModel(
    id: '3',
    nameTrip: 'الازهر الشريف',
    imageTrip: AppImage.testImage,
    price: 80,
    description: 'لا يوجد وصف',
  ),
  TripModel(
    id: '4',
    nameTrip: 'الاسكندريه',
    imageTrip: AppImage.testImage,
    price: 200,
    description: 'لا يوجد وصف',
  ),
];
