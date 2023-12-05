import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mangment/controller/count.dart';

class Incresss extends StatefulWidget {
  const Incresss({super.key});

  @override
  State<Incresss> createState() => _IncresssState();
}

class _IncresssState extends State<Incresss> {
  @override
  Widget build(BuildContext context) {
    final plus = Provider.of<CountController>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Consumer<CountController>(
                builder: (BuildContext context, value, Widget? child) {
                  return Text(
                    plus.count.toString(),
                    style: TextStyle(
                      fontSize: size.width / 10,
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                plus.plus();
              },
              child: const Text("+"),
            )
          ],
        ),
      ),
    );
  }
}
