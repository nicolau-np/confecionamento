import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:prato_final/models/prato_manager.dart';
import 'package:prato_final/models/slider_manager.dart';
import 'package:prato_final/models/user.dart';
import 'package:prato_final/models/user_manager.dart';
import 'package:prato_final/pages/bottom_navigator.dart';
import 'package:prato_final/pages/detalhes_prato.dart';
import 'package:prato_final/pages/favorito_page.dart';
import 'package:prato_final/pages/home_page.dart';
import 'package:prato_final/pages/new.dart';
import 'package:provider/provider.dart';

import 'package:prato_final/models/prato.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*Firestore.instance.collection("pratos").getDocuments().then((value) => {
      value.documents.forEach((element) {
        print(element.data);
      })
    });*/

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PratoManager(),
        ),
        ChangeNotifierProvider(
          create: (_) => SliderManager(),
        ),
        ChangeNotifierProvider(
          create: (_) => Prato(),
        ),
        ChangeNotifierProvider(
          create: (_) => User(),
        ),
        ChangeNotifierProvider(
          create: (_) => UserManager(),
        )
        /*outro provider */
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Prato do Dia',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/bottom',
        routes: {
          '/bottom': (context) => BottomNavigatorPage(),
          '/home': (context) => HomePage(),
          '/favorito': (context) => FavoritoPage(),
          '/detalhes_prato': (context) => DetalhesPrato(),
          '/novo': (context) => NovaTia(),
        },
      ),
    );
  }
}
