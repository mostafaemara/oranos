// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:oranos/src/data/model/expert.dart';

class HomeState {
  final List<Expert> experts;
  final bool isLoading;
  HomeState.init()
      : isLoading = true,
        experts = [];
  HomeState(this.experts, this.isLoading);

  HomeState copyWith({
    List<Expert>? experts,
    bool? isLoading,
  }) {
    return HomeState(
      experts ?? this.experts,
      isLoading ?? this.isLoading,
    );
  }
}
