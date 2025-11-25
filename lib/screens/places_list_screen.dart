import 'package:flutter/material.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:provider/provider.dart';
import '../utils/app_routes.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus lugares'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.PLACE_FORM);
            }, 
            icon: Icon(Icons.add),
            color: Colors.white,
          )
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<GreatPlaces>(context, listen: false).loadPlaces(),
        builder: (ctx, snapshot) => snapshot.connectionState == ConnectionState.waiting
          ? Center(child: CircularProgressIndicator())
          : Consumer<GreatPlaces>(
          child: Center(
            child: Text('Nenhum local cadastrado'),
          ),
          builder: (ctx, greatPlaces, ch) {
            if (greatPlaces.itemsCount == 0) {
              return ch!;
            }
            return ListView.builder(
              itemCount: greatPlaces.itemsCount, 
              itemBuilder: (ctx, i) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: 
                  FileImage(greatPlaces.getItem(i).image),
                ),
                title: Text(greatPlaces.getItem(i).title),
                subtitle: Text(greatPlaces.getItem(i).location!.address ?? ''),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.PLACE_DETAIL,
                    arguments: greatPlaces.getItem(i),
                  );
                },
              )
            );
          },
        ),
      ),
    );
  }
}