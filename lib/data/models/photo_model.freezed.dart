// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotosModel _$PhotosModelFromJson(Map<String, dynamic> json) {
  return _PhotosModel.fromJson(json);
}

/// @nodoc
mixin _$PhotosModel {
  List<PhotoModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosModelCopyWith<PhotosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosModelCopyWith<$Res> {
  factory $PhotosModelCopyWith(
          PhotosModel value, $Res Function(PhotosModel) then) =
      _$PhotosModelCopyWithImpl<$Res, PhotosModel>;
  @useResult
  $Res call({List<PhotoModel> data});
}

/// @nodoc
class _$PhotosModelCopyWithImpl<$Res, $Val extends PhotosModel>
    implements $PhotosModelCopyWith<$Res> {
  _$PhotosModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotosModelImplCopyWith<$Res>
    implements $PhotosModelCopyWith<$Res> {
  factory _$$PhotosModelImplCopyWith(
          _$PhotosModelImpl value, $Res Function(_$PhotosModelImpl) then) =
      __$$PhotosModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PhotoModel> data});
}

/// @nodoc
class __$$PhotosModelImplCopyWithImpl<$Res>
    extends _$PhotosModelCopyWithImpl<$Res, _$PhotosModelImpl>
    implements _$$PhotosModelImplCopyWith<$Res> {
  __$$PhotosModelImplCopyWithImpl(
      _$PhotosModelImpl _value, $Res Function(_$PhotosModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PhotosModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotosModelImpl implements _PhotosModel {
  const _$PhotosModelImpl({required final List<PhotoModel> data})
      : _data = data;

  factory _$PhotosModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotosModelImplFromJson(json);

  final List<PhotoModel> _data;
  @override
  List<PhotoModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PhotosModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotosModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotosModelImplCopyWith<_$PhotosModelImpl> get copyWith =>
      __$$PhotosModelImplCopyWithImpl<_$PhotosModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotosModelImplToJson(
      this,
    );
  }
}

abstract class _PhotosModel implements PhotosModel {
  const factory _PhotosModel({required final List<PhotoModel> data}) =
      _$PhotosModelImpl;

  factory _PhotosModel.fromJson(Map<String, dynamic> json) =
      _$PhotosModelImpl.fromJson;

  @override
  List<PhotoModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$PhotosModelImplCopyWith<_$PhotosModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return _PhotoModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoModel {
  String get name => throw _privateConstructorUsedError;
  String get dateCreate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ImageModel get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoModelCopyWith<PhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoModelCopyWith<$Res> {
  factory $PhotoModelCopyWith(
          PhotoModel value, $Res Function(PhotoModel) then) =
      _$PhotoModelCopyWithImpl<$Res, PhotoModel>;
  @useResult
  $Res call(
      {String name, String dateCreate, String description, ImageModel image});

  $ImageModelCopyWith<$Res> get image;
}

/// @nodoc
class _$PhotoModelCopyWithImpl<$Res, $Val extends PhotoModel>
    implements $PhotoModelCopyWith<$Res> {
  _$PhotoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateCreate = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreate: null == dateCreate
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res> get image {
    return $ImageModelCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhotoModelImplCopyWith<$Res>
    implements $PhotoModelCopyWith<$Res> {
  factory _$$PhotoModelImplCopyWith(
          _$PhotoModelImpl value, $Res Function(_$PhotoModelImpl) then) =
      __$$PhotoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String dateCreate, String description, ImageModel image});

  @override
  $ImageModelCopyWith<$Res> get image;
}

/// @nodoc
class __$$PhotoModelImplCopyWithImpl<$Res>
    extends _$PhotoModelCopyWithImpl<$Res, _$PhotoModelImpl>
    implements _$$PhotoModelImplCopyWith<$Res> {
  __$$PhotoModelImplCopyWithImpl(
      _$PhotoModelImpl _value, $Res Function(_$PhotoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateCreate = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_$PhotoModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreate: null == dateCreate
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoModelImpl implements _PhotoModel {
  const _$PhotoModelImpl(
      {required this.name,
      required this.dateCreate,
      required this.description,
      required this.image});

  factory _$PhotoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoModelImplFromJson(json);

  @override
  final String name;
  @override
  final String dateCreate;
  @override
  final String description;
  @override
  final ImageModel image;

  @override
  String toString() {
    return 'PhotoModel(name: $name, dateCreate: $dateCreate, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateCreate, dateCreate) ||
                other.dateCreate == dateCreate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, dateCreate, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      __$$PhotoModelImplCopyWithImpl<_$PhotoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoModel implements PhotoModel {
  const factory _PhotoModel(
      {required final String name,
      required final String dateCreate,
      required final String description,
      required final ImageModel image}) = _$PhotoModelImpl;

  factory _PhotoModel.fromJson(Map<String, dynamic> json) =
      _$PhotoModelImpl.fromJson;

  @override
  String get name;
  @override
  String get dateCreate;
  @override
  String get description;
  @override
  ImageModel get image;
  @override
  @JsonKey(ignore: true)
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageModelImplCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$ImageModelImplCopyWith(
          _$ImageModelImpl value, $Res Function(_$ImageModelImpl) then) =
      __$$ImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ImageModelImplCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$ImageModelImpl>
    implements _$$ImageModelImplCopyWith<$Res> {
  __$$ImageModelImplCopyWithImpl(
      _$ImageModelImpl _value, $Res Function(_$ImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ImageModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageModelImpl implements _ImageModel {
  const _$ImageModelImpl({required this.name});

  factory _$ImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageModelImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ImageModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      __$$ImageModelImplCopyWithImpl<_$ImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageModelImplToJson(
      this,
    );
  }
}

abstract class _ImageModel implements ImageModel {
  const factory _ImageModel({required final String name}) = _$ImageModelImpl;

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$ImageModelImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
