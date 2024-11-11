import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citypress_web/ui/styles/colors.dart';
import 'package:citypress_web/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: context.read<ThemeProvider>().isDarkMode,
      activeColor: accentColor,
      thumbColor: Theme.of(context).primaryColor,
      onChanged: (value) =>
          context.read<ThemeProvider>().toggleTheme(isOn: value),
    );
  }
}
