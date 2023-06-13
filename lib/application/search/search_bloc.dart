import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:netflix/domain/search/model/search_rep/search_response.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial()) {
    on<Initialize>((event, emit) {});

    on<SearchMovie>((event, emit) {});
  }
}
