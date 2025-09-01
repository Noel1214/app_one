import 'package:appone/data/notifiers.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedThemeNotifier,
      builder: (context, value, child) {
        return Center(
          child: Container(
            child: ElevatedButton(
              onPressed: () {
                selectedThemeNotifier.value = !selectedThemeNotifier.value;
              },
              child: Text("Change Theme"),
            ),
          ),
        );
      },
    );
  }
}
