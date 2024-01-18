import 'package:flutter/material.dart';
import 'package:prac_2_cris/app_theme.dart';
import 'package:prac_2_cris/domain/entities/DiscoverProvider.dart';
import 'package:prac_2_cris/screens/DiscoverScreen.dart';
import 'package:provider/provider.dart';

import 'domain/entities/ImagePost.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DiscoverProvider() ..loadImages(),
        child: MaterialApp(
          theme : AppTheme().getDarkTheme(),
          debugShowCheckedModeBanner: false,
          title: 'Cristian Popica ',
          home: Scaffold(
              body: DiscoverScreen()
          ),
        ));

  }
}
