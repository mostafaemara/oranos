// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:oranos/src/data/model/expert.dart';
import 'package:oranos/src/styles/ui_constants.dart';

class ExpertListItem extends StatelessWidget {
  const ExpertListItem({
    Key? key,
    required this.expert,
    required this.onFavoritePressed,
  }) : super(key: key);
  final Expert expert;

  final VoidCallback onFavoritePressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 185,
      height: 242,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: Image.network(expert.image)),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: AppColors.yellow,
                  size: 15,
                ),
                Text(
                  expert.rating,
                  style: const TextStyle(color: AppColors.grey, fontSize: 12),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: onFavoritePressed,
                  child: Icon(
                    Icons.favorite,
                    size: 15,
                    color: expert.isFav ? Colors.red : AppColors.grey,
                  ),
                )
              ],
            ),
          ),
          Text(
            expert.name,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Text(
            expert.department,
            style: const TextStyle(fontSize: 12, color: AppColors.grey),
          ),
        ],
      ),
    );
  }
}
