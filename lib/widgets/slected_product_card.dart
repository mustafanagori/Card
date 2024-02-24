import 'package:app/widgets/product_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectedProductCard extends StatelessWidget {
  final String name;
  final String save;
  final String img;

  const SelectedProductCard(
      {super.key, required this.name, required this.save, required this.img});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Card(
        child: Container(
          decoration: BoxDecoration(),
          width: double.infinity,
          height: height * 0.16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: height * 0.14,
                width: 100,
                child: Image.asset(img),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductText(
                        txt: name,
                      ),
                      ProductText(
                        txt: "Shuted Bruch ",
                      ),
                      ProductText(
                        txt: "Set - 12 pices",
                      ),
                      ProductText(
                        txt: "save 138",
                      ),
                      ProductText(
                        txt: "SR ${save}",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.delete,
                        size: 27,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove,
                          ),
                        ),
                        const Text("1"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.add,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
