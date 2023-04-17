import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        childAspectRatio: 0.70,

        shrinkWrap: true,
        crossAxisCount: 2,
        children: [
          // for(int i =1; i< 9; i++)

          Container(
            padding:EdgeInsets.only(left: 15,right: 15,top: 10) ,
            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-50%",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ),
                    Icon(
                        Icons.favorite_border,
                        color:Colors.red
                    )
                  ],
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/iphone.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text("Iphone",style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF4C53A5),
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "An original Apple iPhone model will always have an IMEI number",
                    style: TextStyle(fontSize: 10,color: Color(0xFF4C53A5)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:EdgeInsets.only(left: 15,right: 15,top: 10) ,
            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-5%",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ),
                    Icon(
                        Icons.favorite_border,
                        color:Colors.red
                    )
                  ],
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/sam.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text("Samsung A 10+",style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF4C53A5),
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "An original Apple iPhone model will always have an IMEI number",
                    style: TextStyle(fontSize: 10,color: Color(0xFF4C53A5)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding:EdgeInsets.only(left: 15,right: 15,top: 10) ,
            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-70%",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ),
                    Icon(
                        Icons.favorite_border,
                        color:Colors.red
                    )
                  ],
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/techno.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text("Samsung ",style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF4C53A5),
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "An original Apple iPhone model will always have an IMEI number",
                    style: TextStyle(fontSize: 10,color: Color(0xFF4C53A5)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          Container(
            padding:EdgeInsets.only(left: 15,right: 15,top: 10) ,
            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-70%",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ),
                    Icon(
                        Icons.favorite_border,
                        color:Colors.red
                    )
                  ],
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/techno.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text("Samsung ",style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF4C53A5),
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "An original Apple iPhone model will always have an IMEI number",
                    style: TextStyle(fontSize: 10,color: Color(0xFF4C53A5)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),


        ],

      ),
    );
  }
}
