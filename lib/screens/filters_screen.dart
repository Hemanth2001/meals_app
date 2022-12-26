import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}


class _FilterScreenState extends State<FilterScreen> {

  bool _glutenFree=false;
  bool _vegertarian=false;
  bool _vegan=false;
  bool _lactoseFree = false;



  //some issue while passing the function

  Widget _buildSwitchListTile(
       String title,
      String description,
      bool currentValue,
      Function updateValue,
      )
  {
    return SwitchListTile(
        title: Text(title),
        value: currentValue,
        subtitle: Text(description),

        onChanged:updateValue(),
    );
        }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Filter")
      ),
      body: Column(
        children: [
          Container(
            padding:EdgeInsets.all(8.0),
            child: Text(
              "Adjust your meal select",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Expanded(child: ListView(
            children: [
              _buildSwitchListTile('Gluten-free Meals',
                  'Only include gluten free meals ',_glutenFree,  (newValue){
                    setState(() {
                      _glutenFree=newValue;
                    });
                  })
            ],
          ))
        ],
      )
    );
  }
}
