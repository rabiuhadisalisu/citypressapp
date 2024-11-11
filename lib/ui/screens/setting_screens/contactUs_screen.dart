import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:citypress_web/cubit/get_setting_cubit.dart';
import 'package:citypress_web/utils/constants.dart';

class ContactusScreen extends StatelessWidget {
  const ContactusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
           AppBar(
              title: Text(CustomStrings.contactUs),
              centerTitle: true,
            ),
          
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: HtmlWidget(context.read<GetSettingCubit>().contactUS()),
            ),
          ],
        ),
      ),
    );
  }
}
