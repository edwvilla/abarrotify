import 'package:abarrotify/src/widgets/appbar.dart';
import 'package:flutter/material.dart';

class CreateProductPage extends StatelessWidget {
  static String id = 'create_product_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        icon: Icons.photo_size_select_actual,
        onTap: _selectPhoto,
      ),
      body: Center(
        child: Text('Create product'),
      ),
    );
  }

  void _selectPhoto() {}
}
