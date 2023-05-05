import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:insta_pro/core/state/auth/models/auth_result.dart';
import 'package:insta_pro/core/state/posts/typedefs/user_id.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthResult result,
    required bool isLoading,
    required UserId userId,
  }) = _AuthState;
}
