import 'package:emeron/features/home/domain/repositories/home.repository.dart';
import 'package:emeron/features/home/domain/usecases/get_user_email/get_user_email.usecase.dart';

class GetUserEmailUseCaseImpl implements IGetUserEmailUseCase {
  final IHomeRepository homeRepository;

  GetUserEmailUseCaseImpl(this.homeRepository);

  @override
  Future<String> call() async => homeRepository.getUserEmail();
}
