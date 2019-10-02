import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/bloc/layout_bloc.dart';
import 'package:pos/view/layout.dart';
import 'package:pos/view/login_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/main":
        return MaterialPageRoute(builder: (ctx) => BlocProvider<LayoutBloc>(
          builder: (context) => LayoutBloc(),
          child: LayoutPage()
        ));
      case "/login":
        return MaterialPageRoute(builder: (ctx) => BlocProvider<LoginBloc>(
          builder: (context) => LoginBloc(),
          child: LoginPage()
        ));

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}')
            )
          )
        );
    }
  }
}