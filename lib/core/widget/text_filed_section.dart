import 'package:flutter/material.dart';

class TextFeildSection extends StatefulWidget {
  const TextFeildSection({
    super.key,
    required this.hintText,
    required this.textFieldName,
    this.isSuffixIcon,
    this.validator,
    this.obscureText,
  });
  final String hintText;
  final String textFieldName;
  final bool? obscureText;

  final bool? isSuffixIcon;
  final String? Function(String?)? validator;

  @override
  State<TextFeildSection> createState() => _TextFeildSectionState();
}

class _TextFeildSectionState extends State<TextFeildSection> {
  bool vasbilty = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: .start,
      children: [
        Text(
          widget.textFieldName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: .w400,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xffF0F5FA),
            borderRadius: BorderRadius.circular(12),
          ),

          child: TextFormField(
            validator: widget.validator,

            decoration: InputDecoration(
              suffixIcon: widget.isSuffixIcon == true
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          vasbilty = !vasbilty;
                        });
                      },
                      icon: vasbilty
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.remove_red_eye),
                    )
                  : null,
              border: OutlineInputBorder(borderSide: BorderSide.none),
              hint: Text(
                widget.hintText,
                style: TextStyle(fontWeight: .w300, fontSize: 15),
              ),
            ),
            obscureText: widget.isSuffixIcon == true ? vasbilty : false,
          ),
        ),
      ],
    );
  }
}
