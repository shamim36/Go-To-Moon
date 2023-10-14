import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  late double _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(
            horizontal: _deviceWidth * 0.05,
            vertical: _deviceHeight * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _pageTittle(),
              _destinationDropDownWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTittle() {
    return Text(
      '#GoMoon',
      style: TextStyle(
        color: Colors.white,
        fontSize: 60,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assests/images/astro_moon.png',
          ),
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    List<String> _items = [
      'James Webb Station',
      'Preneour Station',
    ];
    return Container(
      child: DropdownButton(
        onChanged: (_) {},
        items: _items
            .map(
              (e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
