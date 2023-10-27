import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: const BorderSide(color: Color(0xff005473)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff005473)),
            borderRadius: BorderRadius.circular(50.0),
          ),
          hintText: 'Search Location',
          hintStyle: const TextStyle(
            fontSize: 14.0,
            color: Colors.black38,
          ),
          prefixIcon: const Icon(
            Icons.location_on,
            color: Color(0xff005473),
          ),
        ),
      ),
    );
  }
}
