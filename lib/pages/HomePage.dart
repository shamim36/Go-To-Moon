import 'package:flutter/material.dart';
import 'package:udemy/widgets/custom_dropdown.dart';

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
            horizontal: _deviceWidth * 0.00,
            vertical: _deviceHeight * 0.00,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _pageTittle(),
                    _bookRiderWidget(),
                  ],
                ),
              ),
           Align(
            alignment: Alignment.centerRight,
            child: _astroImageWidget(),
           ),
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
      height: _deviceHeight*0.55,
      width: _deviceWidth *0.75,
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
    return CustomDropDouwnButtonClass(values: const [
      'James Webb Station',
      'Preneour Station',
    ], width: _deviceWidth);
  }


  Widget _travellersInformationWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDouwnButtonClass(values: const ['1','2','3','4'], width: _deviceWidth * 0.45,),
        CustomDropDouwnButtonClass(values: const ['Economy','Bussiness','First','Private'], width: _deviceWidth * 0.40,),
      ],
    );
  }


  Widget _bookRiderWidget(){
    return Container(
      height: _deviceHeight*0.23,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }


  Widget _rideButton(){
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight*0.001),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),),
      width: _deviceWidth,
      height: _deviceHeight*0.060,
      child: MaterialButton(onPressed: (){},child: Text('Book Ride!',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),),
    );
  }


}
