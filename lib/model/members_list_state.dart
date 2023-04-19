import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'members_list_state.freezed.dart';

@freezed
abstract class MembersListState with _$MembersListState {
  const factory MembersListState({
    @Default([]) List<String> members,
  }) = _MembersListState;
}
