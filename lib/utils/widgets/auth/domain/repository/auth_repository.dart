import '../../../utility/parameters/request_otp.dart';
import '../../../utility/parameters/verify_otp.dart';

abstract class AuthRepository{

  //Request OTp
  requestOtp({required RequestOtp request});

  //Verify OTP
  verifyOtp({required VerifyOtp request});
}