import 'package:logger/logger.dart';
import 'package:read_me_app2/data/source/firebase/auth_data_source.dart';
import 'package:read_me_app2/domain/entity/email_auth_entity.dart';
import 'package:read_me_app2/domain/repository/email_auth_repository.dart';

class AuthRepositoryImpl implements EmailAuthRepository{
  AuthRepositoryImpl(this._authDataSource);
  final AuthDataSource _authDataSource;
  final Logger logger = Logger();


  @override
  Future<EmailAuthEntity> logIn(String email, String pwd) async {
    final result = await _authDataSource.logIn(email, pwd);
    return EmailAuthEntity(
      email: result!.email,
      uid: result.uid,
    );
  }

  @override
  Future<EmailAuthEntity> signUp(String email, String pwd) async{
    final result = await _authDataSource.signUp(email, pwd);
    return EmailAuthEntity(
      email: result!.email,
      uid: result.uid,
    );
  }
  
}

