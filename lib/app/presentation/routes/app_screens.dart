import 'package:get/route_manager.dart';
import 'package:simple_app/app/presentation/routes/app_names.dart';
import 'package:simple_app/app/presentation/screens/main_screen.dart';

class App {
  static final screens = [
    GetPage(name: AppNames.mainScreen, page: () => const MainScreen())
  ];
}
