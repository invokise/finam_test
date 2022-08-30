import 'package:bloc/bloc.dart';
import 'package:finam_test/data/data_sources/api_service.dart';
import 'package:finam_test/data/models/post_model.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final APIService apiService;
  PostBloc({required this.apiService}) : super(PostLoadingState()) {
    on<PostLoadedEvent>(_onPostLoadedEvent);
  }

  _onPostLoadedEvent(PostLoadedEvent event, Emitter<PostState> emit) async {
    emit(PostLoadingState());
    try {
      final posts = await apiService.getPosts();
      emit(PostLoadedState(posts: posts));
    } catch (e) {
      emit(PostFailureState(error: e));
    }
  }
}
