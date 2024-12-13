import 'package:emeron/features/library/domain/entities/library.entity.dart';
import 'package:emeron/features/library/domain/usecases/get_library.usecase.dart';
import 'package:emeron/features/library/domain/repositories/library.repository.dart';

class GetLibraryUsecaseImpl implements IGetLibraryUsecase {
  final ILibraryRepository repository;

  GetLibraryUsecaseImpl(this.repository);

  @override
  Stream<LibraryEntity> call() {
    try {
      return repository.getLibrary();
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
