import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maritimmuda_connect/themes.dart';

class SearchbarWidget extends StatelessWidget {
  const SearchbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: neutral01Color,
        prefixIcon: Icon(Icons.search),
        suffixIcon: filterButton(),
        hintText: "Search event",
        hintStyle: regulerText15.copyWith(color: neutral03Color),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none),
      ),
      // Gunakan onChanged di sini
    );
  }

  Widget filterButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: neutral01Color,
          shape: BoxShape.circle,
          border: Border.all(color: neutral02Color, width: 3),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Image.asset('assets/icons/filter_icon.png'),
      ),
    );
  }
}
