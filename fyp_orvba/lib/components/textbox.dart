import 'package:flutter/material.dart';

class textBox extends StatefulWidget {
  final String text;
  final IconData icon;
  const textBox({super.key,required this.text, required this.icon});

  @override
  State<textBox> createState() => _textBoxState();
}

class _textBoxState extends State<textBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: widget.text,
          prefixIcon: Icon(widget.icon,color: Colors.black,),
        ),
      ),
    );
  }
}

class fullTextbox extends StatefulWidget {
  final String text;
  const fullTextbox({super.key, required this.text});

  @override
  State<fullTextbox> createState() => _fullTextboxState();
}

class _fullTextboxState extends State<fullTextbox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: widget.text,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
