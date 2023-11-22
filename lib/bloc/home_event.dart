part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initGetNewPhoto() = _InitGetNewPhoto;

  const factory HomeEvent.initGetPopularPhoto() = _InitGetPopularPhoto;

  const factory HomeEvent.getNewPhoto() = _GetNewPhoto;

  const factory HomeEvent.getPopularPhoto() = _GetPopularPhoto;

  const factory HomeEvent.upToRefresh() = _UpToRefresh;

  const factory HomeEvent.paginationForNewPhoto() = _PaginationForNewPhoto;

  const factory HomeEvent.paginationForPopularPhoto() = _PaginationForPopularPhoto;

  const factory HomeEvent.changePaginationNewStatus() = _ChangePaginationNewStatus;

  const factory HomeEvent.changePaginationPopularStatus() = _ChangePaginationPopularStatus;

  const factory HomeEvent.errorResponse() = _ErrorResponse;

  const factory HomeEvent.succesfullResponse() = _SuccesfullResponse;
}
