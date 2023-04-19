// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'members_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MembersListState {
  List<String> get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MembersListStateCopyWith<MembersListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembersListStateCopyWith<$Res> {
  factory $MembersListStateCopyWith(
          MembersListState value, $Res Function(MembersListState) then) =
      _$MembersListStateCopyWithImpl<$Res, MembersListState>;
  @useResult
  $Res call({List<String> members});
}

/// @nodoc
class _$MembersListStateCopyWithImpl<$Res, $Val extends MembersListState>
    implements $MembersListStateCopyWith<$Res> {
  _$MembersListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembersListStateCopyWith<$Res>
    implements $MembersListStateCopyWith<$Res> {
  factory _$$_MembersListStateCopyWith(
          _$_MembersListState value, $Res Function(_$_MembersListState) then) =
      __$$_MembersListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> members});
}

/// @nodoc
class __$$_MembersListStateCopyWithImpl<$Res>
    extends _$MembersListStateCopyWithImpl<$Res, _$_MembersListState>
    implements _$$_MembersListStateCopyWith<$Res> {
  __$$_MembersListStateCopyWithImpl(
      _$_MembersListState _value, $Res Function(_$_MembersListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
  }) {
    return _then(_$_MembersListState(
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_MembersListState implements _MembersListState {
  const _$_MembersListState({final List<String> members = const []})
      : _members = members;

  final List<String> _members;
  @override
  @JsonKey()
  List<String> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'MembersListState(members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembersListState &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembersListStateCopyWith<_$_MembersListState> get copyWith =>
      __$$_MembersListStateCopyWithImpl<_$_MembersListState>(this, _$identity);
}

abstract class _MembersListState implements MembersListState {
  const factory _MembersListState({final List<String> members}) =
      _$_MembersListState;

  @override
  List<String> get members;
  @override
  @JsonKey(ignore: true)
  _$$_MembersListStateCopyWith<_$_MembersListState> get copyWith =>
      throw _privateConstructorUsedError;
}
