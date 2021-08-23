import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tabs_bloc_event.dart';
part 'tabs_bloc_state.dart';

class TabsBlocBloc extends Bloc<TabsBlocEvent, TabsBlocState> {
  TabsBlocBloc() : super(TabsBlocInitial());

  @override
  Stream<TabsBlocState> mapEventToState(
    TabsBlocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
