import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Helpers/assets_color.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final int length;
  final TextEditingController controller;
  final bool obscure;
  final TextInputType textInputType;

  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    this.obscure = false,
    this.length = 10,
    this.textInputType = TextInputType.emailAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Expanded(
        child: TextFormField(
          inputFormatters: [
            LengthLimitingTextInputFormatter(length),
          ],
          obscureText: obscure,
          cursorColor: AssetsColors.forgotColor,
          keyboardType: textInputType,
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: obscure
                ? Container(
                    margin: EdgeInsetsDirectional.only(top: 15),
                    child: Text(
                      'Forgot?',
                      style: TextStyle(color: AssetsColors.forgotColor),
                    ))
                : SizedBox(),
            labelText: hintText,
            contentPadding: EdgeInsets.all(10),
            labelStyle: const TextStyle(fontSize: 14, color: AssetsColors.grey),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AssetsColors.grey, width: 1),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AssetsColors.grey, width: 1),
            ),
          ),
        ),
      ),
    );
  }
}
