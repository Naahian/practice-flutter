import 'package:flutter/material.dart';
import 'package:practiceflutter/config/config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: KDefaults.padding,
        vertical: size.height * 0.02,
      ),
      child: Row(
        children: [
          Expanded(flex: 2, child: searchBtn(size)),
          Expanded(flex: 12, child: textField(size, context)),
        ],
      ),
    );
  }

  Container textField(Size size, var context) {
    return Container(
      height: size.height * 0.058,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Pallete.secondaryColor.withOpacity(.7),
            Pallete.secondaryColor,
          ],
          stops: const [0.0, 0.03],
        ),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
            color: Pallete.background.withOpacity(.3),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "search your burger",
          contentPadding: const EdgeInsets.only(left: KDefaults.padding),
          hintStyle:
              TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color),
        ),
        style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium?.color, fontSize: 18),
      ),
    );
  }

  GestureDetector searchBtn(Size size) {
    return GestureDetector(
      onTap: (() {}),
      child: Container(
        height: size.height * 0.058,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Pallete.primaryColor.withOpacity(0.25),
              Pallete.textColor.withOpacity(0.6),
              Pallete.textColor.withOpacity(0.25),
            ],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Pallete.background.withOpacity(.3),
              blurRadius: 5,
              offset: const Offset(2, 0),
            )
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18),
            bottomLeft: Radius.circular(18),
          ),
        ),
        child: Image.asset(
          "assets/icons/search.png",
          scale: 1.3,
        ),
      ),
    );
  }
}
