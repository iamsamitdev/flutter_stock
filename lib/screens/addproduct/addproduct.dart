import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  AddProductScreen({Key key}) : super(key: key);

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {

  final formKey = GlobalKey<FormState>();
  String productName, productDetail, productBarcode, productQty, productPrice, productImage, productCategory, productStatus;

  Widget productNameText(){
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        // icon: Icon(Icons.email),
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24,),
        // hintText: 'you@email.com',
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        labelText: 'Product name',
        labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
        ),
        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value){
        if(value.isEmpty){
          return "Product name cannot empty";
        }else{
          return null;
        }
      },
      onSaved: (value){
        productName = value;
      },
    );
  }

  Widget productDetialText(){
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        // icon: Icon(Icons.email),
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24,),
        // hintText: 'you@email.com',
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        labelText: 'Product detial',
        labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
        ),
        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value){
        if(value.isEmpty){
          return "Product detail cannot empty";
        }else{
          return null;
        }
      },
      onSaved: (value){
        productDetail = value;
      },
    );
  }

  Widget productBarcodeText(){
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        // icon: Icon(Icons.email),
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24,),
        // hintText: 'you@email.com',
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        labelText: 'Product barcode',
        labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
        ),
        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value){
        if(value.isEmpty){
          return "Product barcode cannot empty";
        }else{
          return null;
        }
      },
      onSaved: (value){
        productBarcode = value;
      },
    );
  }


  Widget productQtyText(){
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        // icon: Icon(Icons.email),
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24,),
        // hintText: 'you@email.com',
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        labelText: 'Product Qty',
        labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
        ),
        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value){
        if(value.isEmpty){
          return "Product qty cannot empty";
        }else{
          return null;
        }
      },
      onSaved: (value){
        productQty = value;
      },
    );
  }

  Widget productPriceText(){
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        // icon: Icon(Icons.email),
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24,),
        // hintText: 'you@email.com',
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        labelText: 'Product price',
        labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
        ),
        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value){
        if(value.isEmpty){
          return "Product price cannot empty";
        }else{
          return null;
        }
      },
      onSaved: (value){
        productPrice = value;
      },
    );
  }

  Widget productImageText(){
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        // icon: Icon(Icons.email),
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24,),
        // hintText: 'you@email.com',
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        labelText: 'Product image',
        labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
        ),
        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value){
        if(value.isEmpty){
          return "Product image cannot empty";
        }else{
          return null;
        }
      },
      onSaved: (value){
        productImage = value;
      },
    );
  }

  Widget productCategoryText(){
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        // icon: Icon(Icons.email),
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24,),
        // hintText: 'you@email.com',
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        labelText: 'Product category',
        labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
        ),
        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value){
        if(value.isEmpty){
          return "Product category cannot empty";
        }else{
          return null;
        }
      },
      onSaved: (value){
        productCategory= value;
      },
    );
  }

  Widget productStatusText(){
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: TextStyle(fontSize: 20, color: Colors.teal),
      decoration: InputDecoration(
        // icon: Icon(Icons.email),
        prefixIcon: Icon(Icons.storage, color: Colors.teal, size: 24,),
        // hintText: 'you@email.com',
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        labelText: 'Product status',
        labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
        ),
        contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value){
        if(value.isEmpty){
          return "Product status cannot empty";
        }else{
          return null;
        }
      },
      onSaved: (value){
        productStatus = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new product'),
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: Form(
            key: formKey,
            child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: productNameText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: productDetialText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: productBarcodeText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: productQtyText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: productPriceText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: productImageText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: productCategoryText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: productStatusText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: RaisedButton(
                  onPressed: (){
                    
                    if(formKey.currentState.validate()){
                      formKey.currentState.save();
                      print('Validation pass');
                      print('productName=$productName, productDetail=$productDetail');
                    }

                  },
                  color: Colors.teal,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Submit', style: TextStyle(fontSize: 24, color: Colors.white),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}