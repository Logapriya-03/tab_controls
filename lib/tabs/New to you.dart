import 'package:flutter/material.dart';

class NewTOYouTab extends StatefulWidget {
  const NewTOYouTab({super.key});

  @override
  State<NewTOYouTab> createState() => _NewTOYouTabState();
}

class _NewTOYouTabState extends State<NewTOYouTab> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Trending videos are shown here'));
  }
}