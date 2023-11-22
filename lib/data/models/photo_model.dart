import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@freezed
class PhotosModel with _$PhotosModel {
  const factory PhotosModel({
    required List<PhotoModel> data,
  }) = _PhotosModel;

  factory PhotosModel.fromJson(Map<String, dynamic> json) => _$PhotosModelFromJson(json);
}

@freezed
class PhotoModel with _$PhotoModel {
  const factory PhotoModel({
    required String name,
    required String dateCreate,
    required String description,
    required ImageModel image,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, dynamic> json) => _$PhotoModelFromJson(json);
}

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required String name,
}) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);
}
