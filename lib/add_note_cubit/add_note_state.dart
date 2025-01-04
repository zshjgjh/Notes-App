class AddNoteState{

}
class AddNoteInitialState extends AddNoteState{

}
class AddNoteLoadedState extends AddNoteState{

}
class AddNoteFailureState extends AddNoteState{
  final String errorMessage;

  AddNoteFailureState({required this.errorMessage});

}
class AddNoteSuccessState extends AddNoteState{

}