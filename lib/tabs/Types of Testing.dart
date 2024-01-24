import 'package:flutter/material.dart';

class TestingTab extends StatefulWidget {
  const TestingTab({super.key});

  @override
  State<TestingTab> createState() => _TestingTabState();
}

class _TestingTabState extends State<TestingTab> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Testing apps videos are shown here'));
  }
}