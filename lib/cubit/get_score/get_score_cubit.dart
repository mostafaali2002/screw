import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

part 'get_score_state.dart';

class GetScoreCubit extends Cubit<GetScoreState> {
  GetScoreCubit() : super(GetScoreInitial());

  getScore({required List<TextEditingController> list}) {
    emit(GetScoreSuccess());
  }
}
