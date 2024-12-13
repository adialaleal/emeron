import 'package:emeron/features/library/domain/entities/library.entity.dart';


abstract class IGetLibraryUsecase {
  Stream<LibraryEntity> call();
}
 
