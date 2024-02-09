import 'package:covid_app/Model/patientModel.dart';
import 'package:covid_app/Service/patientService.dart';
import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  Future<List<Patient>>? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=PatientApiService().getPatient();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.teal.shade500,
        title: Text("View Patient",style: TextStyle(color: Colors.white),),),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot){
              if(snapshot.hasData && snapshot.data!.isNotEmpty){
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context,index){
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                child: Text(snapshot.data![index].name[0]),
                                backgroundColor: Colors.teal.shade100,

                              ),
                              title: Text("Name : "+snapshot.data![index].name),
                              subtitle: Text("Phone : "+snapshot.data![index].phone+"\nAddress : "+snapshot.data![index].address
                                  +"\nSymptom : "+snapshot.data![index].symptoms+"\nstatus : "+snapshot.data![index].status),
                            )
                          ],
                        ),
                      );
                    });
              }
              else{
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
