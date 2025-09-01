import 'package:appone/data/notifiers.dart';
import 'package:appone/views/pages/home_page.dart';
import 'package:appone/views/pages/profile_page.dart';
import 'package:appone/views/pages/theme_page.dart';
import 'package:flutter/material.dart';
import 'package:appone/views/widgets/navbar_widgets.dart';

List<Widget> pages = [HomePage(), ProfilePage(), ThemePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title"), centerTitle: true),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return pages.elementAt(selectedPageNotifier.value);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
