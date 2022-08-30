part of 'post_bloc.dart';

@immutable
abstract class PostEvent {}

class PostLoadedEvent extends PostEvent {}
