import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/src/bloc/home/home_cubit.dart';
import 'package:oranos/src/bloc/home/home_state.dart';
import 'package:oranos/src/screens/home/widgets/expert_list_item.dart';

import 'widgets/app_bottom_nav_bar.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void didChangeDependencies() {
    context.read<HomeCubit>().init();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: HomeAppbar(),
      ),
      bottomNavigationBar: const AppBottomNavBar(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) => state.isLoading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 23),
                child: Column(
                  children: [
                    const Text(
                      "Recommended Experts",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 242,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 14),
                        scrollDirection: Axis.horizontal,
                        itemCount: state.experts.length,
                        itemBuilder: (context, index) => ExpertListItem(
                          key: Key(state.experts[index].id),
                          expert: state.experts[index],
                          onFavoritePressed: () {
                            final cubit = context.read<HomeCubit>();
                            print("object");
                            state.experts[index].isFav
                                ? cubit.deleteFromFavorites(
                                    state.experts[index].id)
                                : cubit.addToFavorites(state.experts[index].id);
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )),
      ),
    );
  }
}
