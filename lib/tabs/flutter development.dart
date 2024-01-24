import 'package:flutter/material.dart';

class FlutterTab extends StatefulWidget {
  const FlutterTab({super.key});

  @override
  State<FlutterTab> createState() => _FlutterTabState();
}

class _FlutterTabState extends State<FlutterTab> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Flutter Development videos are shown here'));
  }
}