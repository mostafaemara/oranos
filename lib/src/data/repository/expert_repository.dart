import 'package:oranos/src/data/model/expert.dart';

const _dummyData = [
  {
    "id": "1",
    'name': "Kareem Adel",
    'image':
        "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
    'isFav': false,
    'rating': "4.7",
    'department': "Supply Chain",
  },
  {
    "id": "2",
    'name': "Kareem Adel",
    'image':
        "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
    'isFav': false,
    'rating': "4.7",
    'department': "Supply Chain",
  },
  {
    "id": "3",
    'name': "Kareem Adel",
    'image':
        "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
    'isFav': false,
    'rating': "4.7",
    'department': "Supply Chain",
  },
  {
    "id": "4",
    'name': "Kareem Adel",
    'image':
        "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
    'isFav': false,
    'rating': "4.7",
    'department': "Supply Chain",
  }
];

class ExpertRepository {
  Future<List<Expert>> readExperts() async {
    await Future.delayed(const Duration(seconds: 1));

    return _dummyData.map((e) => Expert.fromMap(e)).toList();
  }

  Future<void> addToFavorites(String id) =>
      Future.delayed(const Duration(seconds: 1));
  Future<void> removeFromFavorites(String id) =>
      Future.delayed(const Duration(seconds: 1));
}
