import 'package:emeron/features/library/domain/entities/book.entity.dart';
import 'package:emeron/features/library/domain/entities/library.entity.dart';

abstract class ILibraryRepository {
  Stream<LibraryEntity> getLibrary();
  Future<void> addBook(BookEntity book);
  Future<void> removeBook(BookEntity book);
  Future<void> updateBook(BookEntity book);
}
