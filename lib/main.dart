import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/blocs.dart';
import 'package:pos/routes.dart';
import 'package:pos/util/nav_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pos/view/splash_screen_page.dart';

void main() async {
  await DotEnv().load(".env");
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocs,
      child: MaterialApp(
        title: 'Fetra POS',
        theme: ThemeData(primarySwatch: Colors.blue),
        navigatorKey: navService.navigatorKey,
        onGenerateRoute: Routes.generateRoute,
        home: SplashScreenPage(),
        
      ),
    );
  }
}