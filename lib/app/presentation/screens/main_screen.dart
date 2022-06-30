import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:simple_app/app/presentation/screens/account_screen.dart';
import 'package:simple_app/app/presentation/screens/post_screen.dart';
import 'package:simple_app/app/view_model/controllers/main_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.put(MainController());

    return Obx(() {
      return Scaffold(
          appBar: AppBar(title: const Text('Home')),
          body: IndexedStack(
              index: mainController.navIndex.value,
              children: const [PostScreen(), AccountScreen()]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: "Account",
                )
              ],
              selectedItemColor: Theme.of(context).primaryColor,
              unselectedItemColor: Colors.grey,
              currentIndex: mainController.navIndex.value,
              onTap: (int idx) {
                mainController.changeNavIdx(idx);
              }));
    });
  }
}
