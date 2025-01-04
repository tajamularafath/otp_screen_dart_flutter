import 'package:demo_designing/utils/widgets/auth/domain/repository/auth_repository.dart';

import '../../../utility/parameters/request_otp.dart';
import '../../../utility/parameters/verify_otp.dart';

class AuthUseCase{
  final AuthRepository repository;

  AuthUseCase({required this.repository});

  Future<dynamic> requestOtp({required RequestOtp request}) async{
    final response = await repository.requestOtp(request: request);
    return response;
  }

  Future<dynamic> verifyOtp({required VerifyOtp request}) async{
    final response = await repository.verifyOtp(request: request);
    return response;
  }
}