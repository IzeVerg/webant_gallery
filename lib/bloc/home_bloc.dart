import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webant_project/data/models/photo_model.dart';
import 'package:webant_project/domain/repository/repository_photo.dart';

import '../data/enums/status_downloading.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required RepositoryPhoto repo,
  })  : _repository = repo,
        super(const HomeState()) {
    on<_InitGetNewPhoto>(_initGetNewPhoto);
    on<_InitGetPopularPhoto>(_initGetPopularPhoto);
    on<_GetNewPhoto>(_getNewPhoto);
    on<_GetPopularPhoto>(_getPopularPhoto);
    on<_UpToRefresh>(_upToRefresh);
    on<_PaginationForNewPhoto>(_paginationForNewPhoto);
    on<_PaginationForPopularPhoto>(_paginationForPopularPhoto);
    on<_ChangePaginationNewStatus>(_changePaginationNewStatus);
    on<_ChangePaginationPopularStatus>(_changePaginationPopularStatus);
    on<_ErrorResponse>(_errorResponse);
    on<_SuccesfullResponse>(_succesfullResponse);
  }

  final RepositoryPhoto _repository;


  Future<void> _initGetNewPhoto(_InitGetNewPhoto event, Emitter emit) async {
    PhotosModel? model;
    try {
      emit(state.copyWith(statusNew: StatusDownloadingNew.loading));
      model = await _repository.getPhoto(limit: state.limitNew, popular: false);
      if (model != null) {
        emit(state.copyWith(statusNew: StatusDownloadingNew.loaded));
      }
    } catch (e) {
      emit(state.copyWith(statusNew: StatusDownloadingNew.error));
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(modelNew: model));
  }



  Future<void> _initGetPopularPhoto(_InitGetPopularPhoto event, Emitter emit) async {
    PhotosModel? model;
    try {
      emit(state.copyWith(statusPopular: StatusDownloadingPopular.loading));
      model = await _repository.getPhoto(limit: state.limitPopular, popular: true);
      if (model != null) {
        emit(state.copyWith(statusPopular: StatusDownloadingPopular.loaded));
      }
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
      emit(state.copyWith(statusPopular: StatusDownloadingPopular.error));
    }
    emit(state.copyWith(modelPopular: model));
  }



  Future<void> _getNewPhoto(_GetNewPhoto event, Emitter emit) async {
    PhotosModel? model;
    try {
      model = await _repository.getPhoto(limit: state.limitNew, popular: false);
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(modelNew: model));
  }



  Future<void> _getPopularPhoto(_GetPopularPhoto event, Emitter emit) async {
    PhotosModel? model;
    try {
      model = await _repository.getPhoto(limit: state.limitPopular, popular: true);
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(modelPopular: model));
  }


  void _errorResponse(_ErrorResponse event, Emitter emit) {
    emit(state.copyWith(statusNew: StatusDownloadingNew.error));
  }

  void _succesfullResponse(_SuccesfullResponse event, Emitter emit) {
    emit(state.copyWith(statusNew: StatusDownloadingNew.loaded));
  }

  void _upToRefresh(_UpToRefresh event, Emitter emit) {
    emit(state.copyWith(limitNew: 12));
    emit(state.copyWith(limitPopular: 12));
  }



  void _paginationForNewPhoto(_PaginationForNewPhoto event, Emitter emit) {
    emit(state.copyWith(limitNew: state.limitNew + 12));
  }

  void _paginationForPopularPhoto(_PaginationForPopularPhoto event, Emitter emit) {
    emit(state.copyWith(limitPopular: state.limitPopular + 12));
  }



  void _changePaginationNewStatus(_ChangePaginationNewStatus event, Emitter emit) {
    emit(state.copyWith(paginationNew: !state.paginationNew));
  }

  void _changePaginationPopularStatus(_ChangePaginationPopularStatus event, Emitter emit) {
    emit(state.copyWith(paginationPopular: !state.paginationPopular));
  }

}
