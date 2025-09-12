import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
    final _storage = const FlutterSecureStorage();

  static const _userUid = 'user_uid';

  Future<void> saveToken(String uid) async {
    await _storage.write(key: _userUid, value: uid);
  }

  Future<String?> readToken() async {
    return await _storage.read(key: _userUid);
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: _userUid);
  }
}