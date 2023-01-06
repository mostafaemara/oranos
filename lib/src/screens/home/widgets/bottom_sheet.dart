import 'package:flutter/material.dart';
import 'package:oranos/src/styles/ui_constants.dart';

class HomeBottomSheet extends StatefulWidget {
  const HomeBottomSheet({Key? key, required this.isSwipeUp}) : super(key: key);
  final bool isSwipeUp;
  @override
  State<HomeBottomSheet> createState() => _HomeBottomSheetState();
}

class _HomeBottomSheetState extends State<HomeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(2.5)),
              height: 5,
              width: 36,
            ),
            const BottomSheetListTile(
                image: "assets/images/it.png", title: "Information Technology"),
            const SizedBox(
              height: 16,
            ),
            const BottomSheetListTile(
                image: "assets/images/supply_chain.png",
                title: "Information Technology"),
            const SizedBox(
              height: 16,
            ),
            const BottomSheetListTile(
                image: "assets/images/secuirty.png",
                title: "Information Technology"),
            const SizedBox(
              height: 16,
            ),
            const BottomSheetListTile(
                image: "assets/images/hr.png", title: "Information Technology"),
            const SizedBox(
              height: 16,
            ),
            const BottomSheetListTile(
                image: "assets/images/immigration.png",
                title: "Information Technology"),
          ],
        ),
      ),
    );
  }
}

class BottomSheetListTile extends StatelessWidget {
  final String image;
  final String title;

  const BottomSheetListTile(
      {super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "23 Experts",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey),
              )
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: AppColors.grey,
          )
        ],
      ),
    );
  }
}
