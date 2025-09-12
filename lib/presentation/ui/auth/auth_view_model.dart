import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app2/domain/entity/email_auth_entity.dart';
import 'package:read_me_app2/presentation/ui/auth/auth_provider.dart';

class AuthViewModel extends Notifier<EmailAuthEntity?>{
  @override
  EmailAuthEntity? build() {
    return null;
  }

  Future<void> logIn(String email, String pwd) async{
    await ref.read(fetchAuthUsecaseProvider).logIn(email, pwd);
  }
  Future<void> signUp(String email, String pwd) async{
    await ref.read(fetchAuthUsecaseProvider).signUp(email, pwd);
  }
}

final emailAuthViewModelProvider = NotifierProvider<AuthViewModel, EmailAuthEntity?>(
  () => AuthViewModel(),
);