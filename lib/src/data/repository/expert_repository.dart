import 'package:oranos/src/data/model/expert.dart';

const _dummyData = [
  {
    'name': "Kareem Adel",
    'image':
        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Ddoctor&psig=AOvVaw0Ba2Ribtkig9dscOm1ZoUJ&ust=1673092077732000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCMDOienvsvwCFQAAAAAdAAAAABAE",
    'isFav': false,
    'rating': "4.7",
    'department': "Supply Chain",
  },
  {
    'name': "Kareem Adel",
    'image':
        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Ddoctor&psig=AOvVaw0Ba2Ribtkig9dscOm1ZoUJ&ust=1673092077732000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCMDOienvsvwCFQAAAAAdAAAAABAE",
    'isFav': false,
    'rating': "4.7",
    'department': "Supply Chain",
  },
  {
    'name': "Kareem Adel",
    'image':
        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Ddoctor&psig=AOvVaw0Ba2Ribtkig9dscOm1ZoUJ&ust=1673092077732000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCMDOienvsvwCFQAAAAAdAAAAABAE",
    'isFav': false,
    'rating': "4.7",
    'department': "Supply Chain",
  },
  {
    'name': "Kareem Adel",
    'image':
        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Ddoctor&psig=AOvVaw0Ba2Ribtkig9dscOm1ZoUJ&ust=1673092077732000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCMDOienvsvwCFQAAAAAdAAAAABAE",
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
