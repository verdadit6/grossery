import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  final String? url;
  final String? name;
  final Color? color;
  const CustomCategory({Key? key, this.url, this.name, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10,
        bottom: 20,
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      url!,
                    ),
                  ),
                ),
              ),
              Text(
                name!,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color!.withOpacity(0.3),
        ),
      ),
    );
  }
}
