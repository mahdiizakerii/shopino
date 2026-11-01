import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopino/feature/product/widget/rating_dialog.dart';
import 'package:shopino/feature/product/widget/sizeWidget.dart';

class Productscreen extends StatefulWidget {
  Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  String seletedSize = "5/6";
  bool isFavorite = false;
  double rating = 4.8;

  void changeSelectedSize(String newSize) {
    setState(() {
      seletedSize = newSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(CupertinoIcons.back, color: Colors.black),
        ),
        title: Center(
          child: Text(
            'Product Details',
            style: GoogleFonts.exo2(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          CupertinoButton(
            child: Icon(
              isFavorite ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
              color: isFavorite ? Colors.red : Colors.black,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('assets/images/pic4.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'stylish jeans clothes',
                    style: GoogleFonts.exo2(fontWeight: FontWeight.w600),
                  ),
                  Text('\$120.99', style: GoogleFonts.exo2(fontSize: 20)),
                ],
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => RatingDilaog(rating: rating),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.star_sharp, color: Colors.amber, size: 20),
                    SizedBox(width: 4),
                    Text('4.8'),
                    SizedBox(width: 4),
                    Text('185 review', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Description',
                style: GoogleFonts.exo2(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Morbi tristique senectus et netus. Mattis pellentesque id nibh tortor id aliquet lectus proin. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Dictum varius duis at consectetur lorem. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Velit ut tortor pretium viverra suspendisse potenti nullam. Et molestie ac feugiat sed lectus. Non nisi est sit amet facilisis magna. Dignissim diam quis enim lobortis scelerisque fermentum. Odio ut enim blandit volutpat maecenas volutpat. Ornare lectus sit amet est placerat in egestas erat. Nisi vitae suscipit tellus mauris a diam maecenas sed. Placerat duis ultricies lacus sed turpis tincidunt id aliquet',
                style: GoogleFonts.exo2(color: Colors.grey.shade600),
              ),
              SizedBox(height: 16),
              Text(
                'size',
                style: GoogleFonts.exo2(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Sizewidget(
                    isSelected: seletedSize == '2/3',
                    label: '2/3',
                    onTap: () => changeSelectedSize('2/3'),
                  ),
                  Sizewidget(
                    isSelected: seletedSize == '3/4',
                    label: '3/4',
                    onTap: () => changeSelectedSize('3/4'),
                  ),
                  Sizewidget(
                    isSelected: seletedSize == '4/5',
                    label: '4/5',
                    onTap: () => changeSelectedSize('4/5'),
                  ),
                  Sizewidget(
                    isSelected: seletedSize == '5/6',
                    label: '5/6',
                    onTap: () => changeSelectedSize('5/6'),
                  ),
                  Sizewidget(
                    isSelected: seletedSize == '6/7',
                    label: '6/7',
                    onTap: () => changeSelectedSize('6/7'),
                  ),
                  Sizewidget(
                    isSelected: seletedSize == '7/8',
                    label: '7/8',
                    onTap: () => changeSelectedSize('7/8'),
                  ),
                  Sizewidget(
                    isSelected: seletedSize == '8/9',
                    label: '8/9',
                    onTap: () => changeSelectedSize('8/9'),
                  ),
                ],
              ),
              SizedBox(height: 4),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                onPressed: () {},
                child: Text(
                  'Add to Bag',
                  style: GoogleFonts.exo2(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
