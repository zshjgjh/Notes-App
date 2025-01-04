import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class blocObserver extends BlocObserver {  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('change: $change');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);

    // TODO: implement onClose
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    // TODO: implement onCreate
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    // TODO: implement onTransition
  }
}
