import 'package:flutter/material.dart';

class BackendTab extends StatefulWidget {
  const BackendTab({super.key});

  @override
  State<BackendTab> createState() => _BackendTabState();
}

class _BackendTabState extends State<BackendTab> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Backend related videos are shown here'));
  }
}