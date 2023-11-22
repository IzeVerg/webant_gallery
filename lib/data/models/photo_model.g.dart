// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotosModelImpl _$$PhotosModelImplFromJson(Map<String, dynamic> json) =>
    _$PhotosModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => PhotoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PhotosModelImplToJson(_$PhotosModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PhotoModelImpl _$$PhotoModelImplFromJson(Map<String, dynamic> json) =>
    _$PhotoModelImpl(
      name: json['name'] as String,
      dateCreate: json['dateCreate'] as String,
      description: json['description'] as String,
      image: ImageModel.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PhotoModelImplToJson(_$PhotoModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dateCreate': instance.dateCreate,
      'description': instance.description,
      'image': instance.image,
    };

_$ImageModelImpl _$$ImageModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageModelImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
