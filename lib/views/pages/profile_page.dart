import 'package:appone/data/notifiers.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedThemeNotifier,
      builder: (context, value, child) {
        return Container(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                selectedThemeNotifier.value = !selectedThemeNotifier.value;
              },
              child: Container(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    selectedThemeNotifier.value
                        ? Icon(Icons.dark_mode)
                        : Icon(Icons.light_mode),
                    SizedBox(width: 10),
                    
                    selectedThemeNotifier.value ? Text("Dark Mode") : Text("Light Mode"),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
