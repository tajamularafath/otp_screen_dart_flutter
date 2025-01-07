
import 'package:demo_designing/utils/widgets/auth/presentation/state_management/login_provider.dart';
import 'package:get_it/get_it.dart';

final s1 = GetIt.instance;

Future<void> init() async{

  //Presentation
  //Provider
  s1.registerFactory(() => LoginProvider());
}