import 'package:covid_app/pages/Viewpage.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal.shade500,
      title: Text("Covid App",style: TextStyle(color: Colors.white),),),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:50,
                width:200,
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade500,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPage()));
                    }, child: Text("View Patient"))),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
