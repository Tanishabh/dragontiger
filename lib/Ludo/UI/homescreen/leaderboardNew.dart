import 'package:dragontiger/DragonTiger/Ui/constant/images.dart';
import 'package:dragontiger/Updown7/UI/constant/color.dart';
import 'package:dragontiger/Updown7/Ui/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Category {
  final String name;
  final List<Subcategory> subcategories;

  Category({required this.name, required this.subcategories});
}

class Subcategory {
  final String number;
  final String photo;
  final String title;
  final String win;

  Subcategory({required this.number,required this.photo,required this.title,required this.win});
}


class Product extends StatefulWidget {
  final List<Category> categories = [
    Category(
      name: 'Daily',
      subcategories: [
        Subcategory(number: "1",photo:AppAssetsU.imageAvatar0,title:"jatt ji",win: "400"),
        Subcategory(number: "2",photo:AppAssetsU.imageAvatar1,title:"deepak",win: "360"),
        Subcategory(number: "3",photo:AppAssetsU.imageAvatar3,title:"sk12",win: "260"),
        Subcategory(number: "4",photo:AppAssetsU.imageAvatar2,title:"gulab juneja",win: "250"),
        Subcategory(number: "5",photo:AppAssetsU.imageAvatar5,title:"sksingh",win: "210"),
        Subcategory(number: "6",photo:AppAssetsU.imageAvatar4,title:"chitranjan",win: "200"),
        // Subcategory(number: "7",photo:AppAssetsU.imageAvatar0,title:"sachin",win: "190"),
        // Subcategory(number: "8",photo:AppAssetsU.imageAvatar1,title:"pradeep nagar",win: "130"),
        // Subcategory(number: "9",photo:AppAssetsU.imageAvatar3,title:"amar",win: "100"),
        // Subcategory(number: "10",photo:AppAssetsU.imageAvatar5,title:"durvesh kumar",win: "50"),

      ],
    ),
    Category(
      name: 'Weekly',
      subcategories: [
        Subcategory(number: "1",photo:AppAssetsU.imageAvatar0,title:"jatt ji",win: "400"),
        Subcategory(number: "2",photo:AppAssetsU.imageAvatar1,title:"deepak",win: "360"),
        Subcategory(number: "3",photo:AppAssetsU.imageAvatar3,title:"sk12",win: "260"),
        Subcategory(number: "4",photo:AppAssetsU.imageAvatar2,title:"gulab juneja",win: "250"),
        Subcategory(number: "5",photo:AppAssetsU.imageAvatar5,title:"sksingh",win: "210"),
        Subcategory(number: "6",photo:AppAssetsU.imageAvatar4,title:"chitranjan",win: "200"),
        Subcategory(number: "7",photo:AppAssetsU.imageAvatar0,title:"sachin",win: "190"),
        Subcategory(number: "8",photo:AppAssetsU.imageAvatar1,title:"pradeep nagar",win: "130"),
        // Subcategory(number: "9",photo:AppAssetsU.imageAvatar3,title:"amar",win: "100"),
        // Subcategory(number: "10",photo:AppAssetsU.imageAvatar5,title:"durvesh kumar",win: "50"),

      ],
    ),
    Category(
      name: 'Monthly',
      subcategories: [
        Subcategory(number: "1",photo:AppAssetsU.imageAvatar0,title:"jatt ji",win: "400"),
        Subcategory(number: "2",photo:AppAssetsU.imageAvatar1,title:"deepak",win: "360"),
        Subcategory(number: "3",photo:AppAssetsU.imageAvatar3,title:"sk12",win: "260"),
        Subcategory(number: "4",photo:AppAssetsU.imageAvatar2,title:"gulab juneja",win: "250"),
        Subcategory(number: "5",photo:AppAssetsU.imageAvatar5,title:"sksingh",win: "210"),
        Subcategory(number: "6",photo:AppAssetsU.imageAvatar4,title:"chitranjan",win: "200"),
        Subcategory(number: "7",photo:AppAssetsU.imageAvatar0,title:"sachin",win: "190"),
        Subcategory(number: "8",photo:AppAssetsU.imageAvatar1,title:"pradeep nagar",win: "130"),
        Subcategory(number: "9",photo:AppAssetsU.imageAvatar3,title:"amar",win: "100"),
        Subcategory(number: "10",photo:AppAssetsU.imageAvatar5,title:"durvesh kumar",win: "50"),

      ],
    ),
    Category(
      name: 'All Time',
      subcategories: [
        Subcategory(number: "1",photo:AppAssetsU.imageAvatar0,title:"jatt ji",win: "400"),
        Subcategory(number: "2",photo:AppAssetsU.imageAvatar1,title:"deepak",win: "360"),
        Subcategory(number: "3",photo:AppAssetsU.imageAvatar3,title:"sk12",win: "260"),
        Subcategory(number: "4",photo:AppAssetsU.imageAvatar2,title:"gulab juneja",win: "250"),
        Subcategory(number: "5",photo:AppAssetsU.imageAvatar5,title:"sksingh",win: "210"),
        Subcategory(number: "6",photo:AppAssetsU.imageAvatar4,title:"chitranjan",win: "200"),
        Subcategory(number: "7",photo:AppAssetsU.imageAvatar0,title:"sachin",win: "190"),
        Subcategory(number: "8",photo:AppAssetsU.imageAvatar1,title:"pradeep nagar",win: "130"),
        Subcategory(number: "9",photo:AppAssetsU.imageAvatar3,title:"amar",win: "100"),
        Subcategory(number: "10",photo:AppAssetsU.imageAvatar5,title:"durvesh kumar",win: "50"),

      ],
    ),
  ];

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Category? _selectedCategory;
  @override
  void initState() {
    super.initState();
    _selectedCategory = widget.categories.isNotEmpty ? widget.categories[0] : null;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Categories List
          SizedBox(height: height/30),
          Container(
            width: height/1.7,
            height: height/10,
            // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.categories.length,
              itemBuilder: (context, index) {
                final category = widget.categories[index];
                return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategory = category;
                      });
                    },
                    child:Container(
                      height:height/20 ,
                      width: height/7,
                      color: _selectedCategory == category? Colors.orange:Colors.red,
                      child: Container(alignment: Alignment.center,
                        // height: height/30,
                        // width: height/2,
                        color:_selectedCategory == category?
                        Colors.white:Colors.orangeAccent,
                        child: Text(category.name, style: _selectedCategory == category? GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.black,fontSize: height/40)): GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white,fontSize: height/40)),
                        ),
                      ),
                    )
                );
              },
            ),
          ),
          Container(
            height: 200,
            width: 500,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.backgroundIcJackpotBox))),
          ),

          // Subcategories List with Images
          if (_selectedCategory != null)
            Expanded(
              child:ListView.builder(
                itemCount: _selectedCategory!.subcategories.length,
                itemBuilder: (context, index) {
                  final subcategory = _selectedCategory!.subcategories[index];
                  return Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Container(
                      padding:  EdgeInsets.all(8.0),
                      width:height/20,
                      decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(subcategory.number,style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.brown,fontSize: height/40))),
                          SizedBox(width: height/50),
                          Container(
                            height: height/20,
                            width: height/10,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(subcategory.photo)))),
                          SizedBox(width: height/10,),
                          RichText(
                            text: TextSpan(
                              text: ' ',
                              style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.black)),
                              children: <TextSpan>[
                                TextSpan(text:subcategory.title, style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.black))),

                              ],
                            ),
                          ),
                          Spacer(),
                          RichText(
                            text: TextSpan(
                              text: '',
                              style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.black)),
                              children:  <TextSpan>[
                                TextSpan(text: subcategory.win, style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.black))),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  );
                  },
              ),
            ),
        ],
      );

  }
}