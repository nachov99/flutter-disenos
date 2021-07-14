import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          Image(image: AssetImage('assets/landscape.jpg')),

          //Titulo
          Title(),

          // Button section
          ButtonSection(),
          
          Container(
            margin: EdgeInsets.symmetric(horizontal:20, vertical: 10),
            child: 
              Text('Do tempor quis fugiat id velit sit nisi cupidatat nisi consequat exercitation dolor nostrud. Eiusmod et aute sunt culpa aute excepteur. Eu cillum ut dolor do voluptate nostrud laboris est ea sunt velit pariatur.'))
        ],
      ),
     );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),),
            ],
          ),
          Expanded(child: Container(),),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL',),
          CustomButton(icon: Icons.navigation_rounded, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 30,),
        Text(this.text, style: TextStyle(color: Colors.blue))
      ],
    );
  }
}
