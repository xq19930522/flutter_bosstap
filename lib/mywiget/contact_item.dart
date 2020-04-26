import 'package:flutter/material.dart';


/***
 *  创建人：xuqing
 *  创建时间：2020年2月5日18:30:50
 *  类说明：横向布局的  封装
 *
 */

class ContactItem extends StatelessWidget {
  ContactItem({Key key, this.count, this.title, this.onPressed})
      : super(key: key);

  final String count;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onPressed,
      child: new Column(
        children: [
          new Padding(
            padding: const EdgeInsets.only(
              bottom: 4.0,
            ),
            child: new Text(count, style: new TextStyle(fontSize: 18.0)),
          ),
          new Text(title,
              style: new TextStyle(color: Colors.black54, fontSize: 14.0)),
        ],
      ),
    );
  }
}
