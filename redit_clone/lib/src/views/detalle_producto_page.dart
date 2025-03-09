import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetalleProductoPage extends StatelessWidget {
  const DetalleProductoPage({super.key, required this.id, this.extras});

  final String id;
  final Map? extras;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del producto $id',style: TextStyle(color: Colors.cyan[50]),),
        actions: [
        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.heart),
        color:Colors.cyan[50])
        ],
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      
        body: Padding(padding: const EdgeInsets.all(10),
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 10),
              Center(
              child: Image.network(extras?['image'],
              height: 200,
              fit: BoxFit.fill),
              ),
              SizedBox(height: 10),
              Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                    Icon(Icons.star,color: Colors.orange,),
                    Text('${extras?['rating']['rate']}',style: TextStyle(color: Colors.orange)),
                    SizedBox(width: 300),
                    Icon(Icons.bookmark,color: Colors.indigo,),
                    Text('${extras?['rating']['count']}  reviews', style: TextStyle(color: Colors.indigo))
                    
            ],
          ),
          SizedBox(height: 10,),
          Text('Categoria: ${extras?['category']}',style: TextStyle(color: Colors.brown),),
          SizedBox(height: 10,),
          Text('${extras?['title']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
          Text('${extras?['description']}',style: TextStyle(color:Colors.black87 ),),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('USD ${extras?['price']}',style:TextStyle(color: Colors.green, fontSize: 20)),
              SizedBox(width: 150),
              TextButton(onPressed: (){}, child: Text('Agregar al carrito',style: TextStyle(fontSize: 20),))
            ],
          )
        ],
        ),
        )
    );
  }
}
