// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_spec_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehicleState {
  bool get isLoading => throw _privateConstructorUsedError;
  VehicleModel? get vehicleModel => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleStateCopyWith<VehicleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleStateCopyWith<$Res> {
  factory $VehicleStateCopyWith(
          VehicleState value, $Res Function(VehicleState) then) =
      _$VehicleStateCopyWithImpl<$Res, VehicleState>;
  @useResult
  $Res call({bool isLoading, VehicleModel? vehicleModel, Failure? failure});
}

/// @nodoc
class _$VehicleStateCopyWithImpl<$Res, $Val extends VehicleState>
    implements $VehicleStateCopyWith<$Res> {
  _$VehicleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? vehicleModel = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vehicleModel: freezed == vehicleModel
          ? _value.vehicleModel
          : vehicleModel // ignore: cast_nullable_to_non_nullable
              as VehicleModel?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleStateCopyWith<$Res>
    implements $VehicleStateCopyWith<$Res> {
  factory _$$_VehicleStateCopyWith(
          _$_VehicleState value, $Res Function(_$_VehicleState) then) =
      __$$_VehicleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, VehicleModel? vehicleModel, Failure? failure});
}

/// @nodoc
class __$$_VehicleStateCopyWithImpl<$Res>
    extends _$VehicleStateCopyWithImpl<$Res, _$_VehicleState>
    implements _$$_VehicleStateCopyWith<$Res> {
  __$$_VehicleStateCopyWithImpl(
      _$_VehicleState _value, $Res Function(_$_VehicleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? vehicleModel = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_VehicleState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vehicleModel: freezed == vehicleModel
          ? _value.vehicleModel
          : vehicleModel // ignore: cast_nullable_to_non_nullable
              as VehicleModel?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_VehicleState extends _VehicleState {
  const _$_VehicleState(
      {this.isLoading = true, this.vehicleModel, this.failure})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final VehicleModel? vehicleModel;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'VehicleState(isLoading: $isLoading, vehicleModel: $vehicleModel, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.vehicleModel, vehicleModel) ||
                other.vehicleModel == vehicleModel) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, vehicleModel, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleStateCopyWith<_$_VehicleState> get copyWith =>
      __$$_VehicleStateCopyWithImpl<_$_VehicleState>(this, _$identity);
}

abstract class _VehicleState extends VehicleState {
  const factory _VehicleState(
      {final bool isLoading,
      final VehicleModel? vehicleModel,
      final Failure? failure}) = _$_VehicleState;
  const _VehicleState._() : super._();

  @override
  bool get isLoading;
  @override
  VehicleModel? get vehicleModel;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleStateCopyWith<_$_VehicleState> get copyWith =>
      throw _privateConstructorUsedError;
}
