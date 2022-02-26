import 'package:flutter/material.dart';

class SellingCard extends StatefulWidget {
  final String? url;
  final String? itemName;
  final String? description;
  final String? price1;
  final String? price2;
  final TextDecoration? textDecoration;

  const SellingCard(
      {Key? key,
      this.url,
      this.itemName,
      this.description,
      this.price1,
      this.price2,
      this.textDecoration})
      : super(key: key);

  @override
  _SellingCardState createState() => _SellingCardState();
}

class _SellingCardState extends State<SellingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 370,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[850],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff12BA6C).withOpacity(0.3),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.url!, scale: 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.itemName!,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Color(0xff12BA6C),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 230,
                    child: Text(
                      widget.description!,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.price1!,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: widget.textDecoration,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.price2!,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
