import 'package:emeron/features/home/domain/repositories/home.repository.dart';
import 'package:emeron/features/home/domain/usecases/get_user_display_name/get_user_display_name.usecase.dart';

class GetUserDisplayNameUseCaseImpl implements IGetUserDisplayNameUseCase {
  final IHomeRepository homeRepository;

  GetUserDisplayNameUseCaseImpl(this.homeRepository);

  @override
  Future<String> call() async => homeRepository.getUserDisplayName();
}
