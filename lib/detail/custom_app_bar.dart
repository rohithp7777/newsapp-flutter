import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 10, 4, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              CircleAvatar(

                // child: GestureDetector(
                //     onTap: () {Navigator.of(context).pushNamed(Portfolio.routeName);},
                //     child: CustomAppBar()),
                radius: 24,
                backgroundImage: AssetImage('assets/images/mypic.jpg'),
              ),
              SizedBox(width: 80),
              //Text('13 Oct,2021')
              Text(
                "NewsApp",
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600,fontSize: 30),
              )
            ],
          ),
          // Container(
          //   width: 300,
          //   child: TextField(
          //       style: TextStyle(fontSize: 15),
          //       cursorColor: Colors.black,
          //       decoration: InputDecoration(
          //           suffixIcon: const Icon(
          //             Icons.search,
          //             color: Colors.grey,
          //           ),
          //           border: InputBorder.none,
          //           hintText: "Search News",
          //           filled: true,
          //           fillColor: Colors.grey[200])),
          // ),

        ],
      ),
    );
  }
}
