import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/bloc/layout_bloc.dart';

class LayoutPage extends StatelessWidget {
  List<Widget> body = [
    Center(child: Text("Menu 1")),
    Center(child: Text("Menu 2")),
    Center(child: Text("Menu 3"))
  ];

  @override
  Widget build(BuildContext context) {
    LayoutBloc bloc = BlocProvider.of<LayoutBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Point of Sales - Fetra IT"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () => null,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ashish Rawat"),
              accountEmail: Text("ashishrawat2911@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text("Menu 1"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                bloc.dispatch(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Menu 2"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                bloc.dispatch(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Menu 3"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                bloc.dispatch(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: BlocBuilder<LayoutBloc, int>(
        builder: (context, i) => body[i],
      ),
    );
  }
}