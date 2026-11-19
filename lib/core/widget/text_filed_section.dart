import 'package:flutter/material.dart';

class TextFeildSection extends StatelessWidget {
  const TextFeildSection({
    super.key,
    required this.hintText,
    required this.textFieldName,
    this.privacy,
    this.isSuffixIcon,
  });
  final String hintText;
  final String textFieldName;
  final bool? privacy;
  final bool? isSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: .start,
      children: [
        Text(
          textFieldName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: .w400,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xffF0F5FA),
            borderRadius: BorderRadius.circular(12),
          ),

          child: TextField(
            decoration: InputDecoration(
              suffixIcon: isSuffixIcon == true
                  ? Icon(Icons.remove_red_eye)
                  : null,
              border: OutlineInputBorder(borderSide: BorderSide.none),
              hint: Text(
                hintText,
                style: TextStyle(fontWeight: .w300, fontSize: 15),
              ),
            ),
            obscureText: privacy ?? false,
          ),
        ),
      ],
    );
  }
}
