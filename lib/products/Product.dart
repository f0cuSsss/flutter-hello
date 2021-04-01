import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Product extends StatefulWidget {
  final String _title;
  final String _imagePath;
  final String _price;

  Product(
      @required this._title, @required this._imagePath, @required this._price);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isFavorite = false;
  bool get getIsFavorite => isFavorite;

  void handleFavoriteClick() {
    setState(() {
      isFavorite = !isFavorite;
    });
    // Toast.show(
    //   isFavorite ? 'Added to favorite' : 'Removed from favorite',
    //   context,
    //   duration: Toast.LENGTH_SHORT,
    //   gravity: Toast.BOTTOM,
    //   backgroundColor: isFavorite ? Colors.green : Colors.red,
    // );
  }

  void handleChatClick() {
    // Temp
    // Toast.show(
    //   'You want to write a message',
    //   context,
    //   duration: Toast.LENGTH_SHORT,
    //   gravity: Toast.BOTTOM,
    //   backgroundColor: Colors.green,
    // );
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Opened chat with product owner')));
  }

  void handleMoreClick() {
    Toast.show(
      'More actions on post',
      context,
      duration: Toast.LENGTH_SHORT,
      gravity: Toast.TOP,
      backgroundColor: Colors.green,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 1, color: Colors.black26)),
        ),
        padding: EdgeInsets.all(7.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.85,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.transparent,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        this.widget._title,
                        style: TextStyle(fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                        padding: EdgeInsets.only(left: 25.0),
                        tooltip: 'More actions',
                        icon: new Icon(Icons.more_vert,
                            size: 26, color: Colors.black),
                        onPressed: this.handleMoreClick),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
            ),
            Expanded(
              flex: 16,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey.withOpacity(0.3),
                ),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                child: FittedBox(
                  child: Image.network(this.widget._imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                      // padding: EdgeInsets.all(0),
                      padding: EdgeInsets.only(top: 4.0),
                      tooltip: 'Favorite',
                      icon: new Icon(
                          (this.isFavorite ? Icons.star : Icons.star_outline),
                          size: 32,
                          color: (this.isFavorite
                              ? Colors.yellow[800]
                              : Colors.black87)),
                      onPressed: this.handleFavoriteClick),
                  IconButton(
                      // padding: EdgeInsets.all(0),
                      padding: EdgeInsets.only(top: 7.0),
                      tooltip: 'Write a message',
                      icon: new Icon(
                        Icons.chat,
                        size: 26,
                        color: Colors.black54,
                      ),
                      onPressed: this.handleChatClick),
                  Text('${this.widget._price} ₴',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600))
                ],
              ),
            )
          ],
        ),
      ),
    );

    // return Card(
    //   elevation: 5,
    //   margin: EdgeInsets.all(5.0),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Expanded(
    //         flex: 1,
    //         child: Container(
    //           color: Colors.transparent,
    //           child: Row(
    //             children: [
    //               Expanded(
    //                 child: Text(
    //                   this._title,
    //                   style: TextStyle(fontSize: 20),
    //                   overflow: TextOverflow.ellipsis,
    //                 ),
    //               ),
    //               Icon(Icons.more_vert, size: 26, color: Colors.black),
    //             ],
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           ),
    //         ),
    //       ),
    //       Expanded(
    //         flex: 16,
    //         child: Container(
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(5.0),
    //             color: Colors.grey.withOpacity(0.3),
    //           ),
    //           width: double.infinity,
    //           margin: const EdgeInsets.symmetric(vertical: 5.0),
    //           child: FittedBox(
    //             child: Image.network(
    //                 'https://www.ferra.ru/thumb/640x0/filters:quality(75)/imgs/2019/04/19/15/3235774/138f9b2a8888cd880b285b5bd7b40e22da6b858f.jpg'),
    //             fit: BoxFit.contain,
    //           ),
    //         ),
    //       ),
    //       Expanded(
    //         flex: 1,
    //         child: Row(
    //           children: [
    //             Icon(Icons.bookmark_outline_rounded,
    //                 size: 32, color: Colors.green[900]),
    //             Text('${this._price} uah',
    //                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600))
    //           ],
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
