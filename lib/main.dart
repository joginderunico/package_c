import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_a/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const PackageC(title: 'Flutter Demo Home Page'),
    );
  }
}

class PackageC extends StatefulWidget {
  const PackageC({super.key, required this.title});

  final String title;

  @override
  State<PackageC> createState() => _PackageCState();
}

class _PackageCState extends State<PackageC> {
  void goTo() {
    Get.to(() => PackageA(title: 'Yo Package A'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[const Text('This is package C')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: goTo,
        tooltip: 'Go',
        child: const Icon(Icons.add),
      ),
    );
  }
}
