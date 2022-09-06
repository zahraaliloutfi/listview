// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Center(
                  child: Text(
                'Gallery',
                style: TextStyle(color: Colors.grey),
              )),
            ),
            body: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView.separated(
                    itemBuilder: (context, index) => gallery(),
                    separatorBuilder: (context, index) => Container(
                          color: Colors.white,
                          child: SizedBox(
                            height: 20,
                          ),
                        ),
                    itemCount: 15),
              ),
            )),
      ),
    );
  }

  Widget gallery() => Column(mainAxisSize: MainAxisSize.max, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                width: 200,
                height: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/img1.jpg',
                    )),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                  width: 200,
                  height: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/img2.jpg',
                      ))),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/img2.jpg',
                      )),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                    width: 200,
                    height: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/img3.jpg',
                        ))),
              ),
            ],
          ),
        ),
      ]);
}

void main(List<String> args) {
  runApp(App());
}
