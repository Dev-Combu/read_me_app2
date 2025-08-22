import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app2/data/repository_impl/reading_book_repository_impl.dart';
import 'package:read_me_app2/data/source/reading_book/reading_book_data_source.dart';
import 'package:read_me_app2/data/source/reading_book/reading_book_data_source_impl.dart';
import 'package:read_me_app2/domain/repository/reading_book_repository.dart';
import 'package:read_me_app2/domain/usecase/reading_book_usecase.dart';

final readingBookDataSourceProvider = Provider<ReadingBookDataSource>((ref) {
  return ReadingBookDataSourceImpl();
});

final readingBookRepositoryProvider = Provider<ReadingBookRepository>((ref) {
  final dataSource = ref.read(readingBookDataSourceProvider);
  return ReadingBookRepositoryImpl(dataSource);
});

final fetchReadingBookUsecaseProvider = Provider<ReadingBookUsecase>((ref) {
  final readingBookRepo = ref.read(readingBookRepositoryProvider);
  return ReadingBookUsecase(readingBookRepo);
});
