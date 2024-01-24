import 'package:flutter/material.dart';

class DevopsTab extends StatefulWidget {
  const DevopsTab({super.key});

  @override
  State<DevopsTab> createState() => _DevopsTabState();
}

class _DevopsTabState extends State<DevopsTab> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Devops related videos are shown here'));
  }
}