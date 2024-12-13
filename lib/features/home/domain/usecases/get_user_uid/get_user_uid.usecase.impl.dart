import 'package:emeron/features/home/domain/repositories/home.repository.dart';
import 'package:emeron/features/home/domain/usecases/get_user_uid/get_user_uid.usecase.dart';

class GetUserUidUseCaseImpl implements IGetUserUidUseCase {
  final IHomeRepository homeRepository;

  GetUserUidUseCaseImpl(this.homeRepository);

  @override
  Future<String> call() async => homeRepository.getUserUID();
}
