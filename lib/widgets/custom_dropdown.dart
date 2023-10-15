
import 'package:flutter/material.dart';

class CustomDropDouwnButtonClass extends StatelessWidget{
  List<String> values;
  double width;

  CustomDropDouwnButtonClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context){
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(80, 80, 80, 0.345),
        borderRadius: BorderRadius.circular(10,),
      ),
      
      child: DropdownButton(
        padding: EdgeInsets.symmetric(horizontal: width*0.05),
        value: values.first,
        onChanged: (_) {},
        items: values
            .map(
              (e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ),
            )
            .toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }


}