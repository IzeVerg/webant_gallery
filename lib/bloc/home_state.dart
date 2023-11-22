part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(StatusDownloadingNew.initial) StatusDownloadingNew statusNew,
    @Default(StatusDownloadingPopular.initial) StatusDownloadingPopular statusPopular,
    PhotosModel? modelNew,
    PhotosModel? modelPopular,
    @Default(12) int limitNew,
    @Default(12) int limitPopular,
    @Default('') String errorMessage,
    @Default(false) bool paginationNew,
    @Default(false) bool paginationPopular,
  }) = _HomeState;
}