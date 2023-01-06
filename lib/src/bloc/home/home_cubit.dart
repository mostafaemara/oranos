import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/src/bloc/home/home_state.dart';
import 'package:oranos/src/data/repository/expert_repository.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._expertRepository) : super(HomeState.init());
  final ExpertRepository _expertRepository;
  void init() async {
    final experts = await _expertRepository.readExperts();
    emit(state.copyWith(isLoading: false, experts: experts));
  }

  void addToFavorites(String id) async {
    final index = state.experts.indexWhere((element) => element.id == id);
    state.experts[index].isFav = true;
    emit(state.copyWith(experts: List.from(state.experts)));
    await _expertRepository.addToFavorites(id);
  }

  void deleteFromFavorites(String id) async {
    final index = state.experts.indexWhere((element) => element.id == id);
    state.experts[index].isFav = false;
    emit(state.copyWith(experts: List.from(state.experts)));
    await _expertRepository.addToFavorites(id);
  }
}
