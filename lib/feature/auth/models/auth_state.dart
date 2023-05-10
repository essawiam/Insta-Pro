import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/typedefs/user_id.dart';
import 'auth_result.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthResult result,
    required bool isLoading,
    required UserId userId,
  }) = _AuthState;
}
