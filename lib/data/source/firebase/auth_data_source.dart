import 'package:read_me_app2/data/dto/firebase/email_auth_dto.dart';

abstract interface class AuthDataSource {
  Future <EmailAuthDto?> logIn(String email, String pwd);
  Future <EmailAuthDto?> signUp(String email, String pwd);
}