import 'package:flutter/material.dart';

class DatabasesTab extends StatefulWidget {
  const DatabasesTab({super.key});

  @override
  State<DatabasesTab> createState() => _DatabasesTabState();
}

class _DatabasesTabState extends State<DatabasesTab> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Databases related videos are shown here'));
  }
}