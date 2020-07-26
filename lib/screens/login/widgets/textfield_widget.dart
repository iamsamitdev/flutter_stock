import 'package:flutter/material.dart';
import 'package:flutter_stock/themes/styles.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;
  final IconData icon;
  final TextInputType inputype;
  final bool obscureText;
  final TextEditingController controller;
  final Function onChanged;

  TextFieldWidget({
    this.label,
    this.icon,
    this.inputype,
    this.obscureText,
    this.controller,
    this.onChanged,
  });

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      keyboardType: widget.inputype,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
          prefixIcon: Icon(widget.icon, color:appTheme().primaryColor,),
          labelText: widget.label
      ),
    );
  }
}