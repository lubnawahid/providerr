import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/pro.dart';

class Favresult extends StatefulWidget {
  const Favresult({Key? key}) : super(key: key);

  @override
  State<Favresult> createState() => _FavresultState();
}

class _FavresultState extends State<Favresult> {
  @override
  Widget build(BuildContext context) {

    final object=Provider.of<FavPro>(context);
    List itemstore=object.favoriteitem;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: itemstore.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
              child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(itemstore[index],
                          style: TextStyle(fontSize: 25),),
                        IconButton(onPressed: (){
                          object.favorites(itemstore[index]);
                        },

                          icon: object.icon_change(itemstore[index]) ?
                          Icon(Icons.favorite,color: Colors.red,) :
                          Icon(Icons.favorite_border,color: Colors.grey,),
                        )
                      ],
                    ),
                    Divider(thickness: 1,),
                  ]
              ),
            );
          },
        ),
      ),
    );
  }
}