import 'package:child_roster/widgets/ChildInputField.dart';
import 'package:flutter/material.dart';


class ExpansionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Expansion List widget file'),
      ),
      body: MyCustomForm(),
      
    );
  }
}





// import 'package:child_roster/widgets/ChildInputField.dart';

// import 'package:flutter/material.dart';

// class ExpansionList extends StatefulWidget {
//   @override
//   _ExpansionListState createState() => _ExpansionListState();
// }

// class _ExpansionListState extends State<ExpansionList> {
//   List<Item> _data = generateItems(10);

//   Widget _buildListPanel() {
//     return ExpansionPanelList(
//       expansionCallback: (int index, bool isExpanded) {
//       setState(() {
//         _data[index].isExpanded = !isExpanded;
//       });
//     },
//      children: _data.map<ExpansionPanel>((Item item) {
//       return ExpansionPanel(...);
//      }).toList()
//           headerBuilder: (BuildContext context, bool isExpanded) {
//             return ListTile(
//               title: Text(Item.headerValue),
//             );
//           };
//           body: ListTile(
//             title: Text(Item.ExpandedValue),
//             trailing: Icon(Icons.delete),
//             onTap: () {
//               _data.removeWhere((currentItem) => Item == currentItem);
//             },
//           ),
//           isExpanded: Item.isExpanded
//           );
//           Container(
//             child: MyCustomForm(),
//           );
          
//     }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           child: _buildListPanel(),
//         ),
//         ),
//     );
//   }
// }

// class Item {
//   String expandedValue;
//   String headerValue;
//   bool isExpanded;

//   Item({this.expandedValue, this.headerValue, this.isExpanded = false});
// }

// List<Item> generateItems(int numberOfItems) {
//   return List.generate(numberOfItems, (index) {
//     return Item(
//         headerValue: 'Panel $index',
//         expandedValue: 'This is item number $index');
//   });
// }
