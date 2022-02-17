

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'Listview1 Screen', screen: const Listview1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'Listview2 Screen', screen: const Listview2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.warning),
    MenuOption(route: 'card', name: 'Card Screen', screen: const CardScreen(), icon: Icons.quick_contacts_mail_rounded),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_rounded),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.animation),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.text_fields),
    MenuOption(route: 'slider', name: 'Slider view', screen: const SliderScreen(), icon: Icons.slideshow_rounded),
    MenuOption(route: 'listviewbuilder', name: 'InfiniteScroll & Pull to refresh', screen: const ListviewBuilderScreen(), icon: Icons.refresh),
  ];

  static Map<String, Widget Function(BuildContext)>  getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen() });

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    }

    return appRoutes;
  }


  /* Otra forma de crear las rutas mas simples sin models
  static Map<String, Widget Function(BuildContext)> routes = {
    'home'      : ( BuildContext context ) => const HomeScreen(),
    'listview1' : ( BuildContext context ) => const Listview1Screen(),
    'listview2' : ( BuildContext context ) => const Listview2Screen(),
    'alert'     : ( BuildContext context ) => const AlertScreen(),
    'card'      : ( BuildContext context ) => const CardScreen(),
  };
  */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}