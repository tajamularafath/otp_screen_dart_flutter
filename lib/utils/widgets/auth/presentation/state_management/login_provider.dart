import 'package:country_codes/country_codes.dart';
import 'package:demo_designing/utils/widgets/auth/data/model/request_otp_response_model.dart';
import 'package:demo_designing/utils/widgets/auth/presentation/state_management/login_state.dart';
import 'package:demo_designing/utils/widgets/auth/presentation/use_case/auth_use_case.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../injection_container.dart';

class LoginProvider extends ChangeNotifier {
  late Locale? deviceLocale = CountryCodes.getDeviceLocale();
  late CountryDetails details = CountryCodes.detailsForLocale();
  final useCase = s1<AuthUseCase>();
  LoginState state = LoginState.noAction;
  bool isEnable = false;
  String dialCode = '';
  String? message;
  RequestOtpResponseModel? response;

  final formKey = GlobalKey<FormState>();
  final TextEditingController mobileNumber = TextEditingController();

  LoginProvider(){
    mobileNumber.text = '9756321000';
  }

  /// UI Update
  void enableRequestOTPButton(){
    if(formKey.currentState!.validate() && dialCode.isNotEmpty){
      isEnable = true;
      debugPrint(mobileNumber.text);
      debugPrint(dialCode);
    } else {
      isEnable = false;
    }
    setState(state: LoginState.noAction);
  }

  /// Set State
  void setState({required LoginState state}){
    this.state = state;
    notifyListeners();
  }
}
