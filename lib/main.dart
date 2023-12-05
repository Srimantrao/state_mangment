import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mangment/controller/count.dart';

import 'UI/incress.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(providers: [
          ChangeNotifierProvider(create: (context)=>CountController()),
      ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Incresss(),
        ),
      ),
    );
  }
}