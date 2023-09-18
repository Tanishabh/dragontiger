import 'package:dragontiger/Updown7/UI/constant/color.dart';
import 'package:dragontiger/Updown7/Ui/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// class NewlistDaily{
//   String number;
//   String photo;
//   String title;
//   String win;
//   NewlistDaily(this.number, this.photo, this.title, this.win);
// }

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



class Myleader extends StatefulWidget {
  const Myleader({super.key});



  @override
  State<Myleader> createState() => _MyleaderState();
}

class _MyleaderState extends State<Myleader> {
  @override
  Widget build(BuildContext context) {
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
          Subcategory(number: "7",photo:AppAssetsU.imageAvatar0,title:"sachin",win: "190"),
          Subcategory(number: "8",photo:AppAssetsU.imageAvatar1,title:"pradeep nagar",win: "130"),
          Subcategory(number: "9",photo:AppAssetsU.imageAvatar3,title:"amar",win: "100"),
          Subcategory(number: "10",photo:AppAssetsU.imageAvatar5,title:"durvesh kumar",win: "50"),

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
          Subcategory(number: "9",photo:AppAssetsU.imageAvatar3,title:"amar",win: "100"),
          Subcategory(number: "10",photo:AppAssetsU.imageAvatar5,title:"durvesh kumar",win: "50"),

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

    // Category? _selectedCategory;
    // @override
    // void initState() {
    //   super.initState();
    //   _selectedCategory = widget.categories.isNotEmpty ? widget.categories[0] : null;
    // }


    final heights = MediaQuery.of(context).size.height;
    final widths = heights * 2.1;
    return InkWell(child:Column(
      children: [
        CircleAvatar(
          radius: heights /30,
          backgroundImage: AssetImage(AppAssetsU.chipsVip0),
          backgroundColor: AppColor.leftrightuserCircleAvatar1BG,
          child: CircleAvatar(
            radius: heights /45,
            child: Image.asset(AppAssetsU.companylogoWhaatup),
          ),
        ),
        Text("Leaderboard", style: GoogleFonts.playfairDisplay(textStyle: TextStyle(color: Colors.white))
        ),
      ],
    ),
      onTap: (){
        showDialog(context: context,
            builder: (ctx) => AlertDialog(
              backgroundColor: Colors.pink,
              insetPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              content: Builder(builder: (context) {
                return Container(
                  height: heights/0.8,
                  width: heights/1.9,
                  child: SingleChildScrollView(child:Stack(children: [Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            child: InkWell(
                                child:  Image.asset(AppAssetsU.buttonsBtnClose2, height: heights/20),
                                onTap: () {
                                  Navigator.pop(context);
                                })
                        ),
                      ),



                   ]
                  ),

                ])
                  )
                );

              }
                ),
            )

             );
            }
        );
      }
}

