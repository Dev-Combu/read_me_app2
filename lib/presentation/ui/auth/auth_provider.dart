import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app2/data/local/secure_storage_service.dart';
import 'package:read_me_app2/data/repository_impl/firebase/auth_repository_impl.dart';

import 'package:read_me_app2/data/source/firebase/auth_data_source.dart';
import 'package:read_me_app2/data/source/firebase/auth_data_source_impl.dart';
import 'package:read_me_app2/domain/repository/email_auth_repository.dart';
import 'package:read_me_app2/domain/usecase/email_auth_usecase.dart';

final logInDataSourceProvider = Provider<AuthDataSource>((ref) {
  return AuthDataSourceImpl();
});

final logInRepositoryProvider = Provider<EmailAuthRepository>((ref) {
  final data = ref.read(logInDataSourceProvider);
  return AuthRepositoryImpl(data);
});

final fetchAuthUsecaseProvider = Provider((ref) {
  final authRepo = ref.read(logInRepositoryProvider);
  return EmailAuthUsecase(authRepo);
});