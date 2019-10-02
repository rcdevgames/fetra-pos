import 'package:flutter/widgets.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  
  Future<dynamic> navigateTo(String routeName, [Object arguments]) => 
    navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  
  Future<dynamic> navigateReplaceTo(String routeName) => 
    navigatorKey.currentState.pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false);

  void navigatePopUntil([String routeName]) => navigatorKey.currentState.popUntil(routeName != null ? (route) => route.isFirst : ModalRoute.withName(routeName));
  
  bool navigatePop() => navigatorKey.currentState.pop();
}
final navService = new NavigationService();