import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'tasks_screen.dart';
import 'package:wish_list3/list_of_products/baidi.dart';


class PassWordPage extends StatefulWidget {
  const PassWordPage({super.key});

  @override
  _PassWordPageState createState() => _PassWordPageState();
}

class _PassWordPageState extends State<PassWordPage> {
  String selectedCurrency = '3';
  // добступ к тексту строки
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  //  return const Image(image: AssetImage('images/2023.jpeg'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Введите количество дней сплава / похода'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Hero(
            tag: 'logo',
            child: SizedBox(
              height: 200.0,
             child: Image(image: AssetImage('images/2023.jpeg')),
              // child: Image.asset('images/2023.jpg'),
            ),
          ),
          const SizedBox(
            height: 48.0,
          ),
          SizedBox(
            height: 48.0,
            child: Text(
              'Дней сплава / похода: $selectedCurrency',
              style: const TextStyle(fontSize: 27, color: Colors.blueGrey),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
              decoration: InputDecoration(
                // icon: new Icon(Icons.message),
                labelText: selectedCurrency,
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.black54),
                ),
              ),
            ),
          ),
          ElevatedButton(
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius. circular(11.0),
            //     side: BorderSide(color: Colors.black )
            // ),
            //
            // color: Colors.black54,
            //
            child: const Text(
              'Открыть список',
              style: TextStyle(fontSize: 27, color: Colors.deepPurple),
            ),

            onPressed: () {
              //_sendDatatoScreen(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TasksScreen(
                    dney: double.parse(selectedCurrency),
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: 48.0,
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            //child: Platform.isIOS ? iOSPicker() : androidDropdown(),
            child: iOSPicker(),
          ),
        ],
      ),
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        setState(() {
          selectedCurrency = currenciesList[selectedIndex];
       //   print('$selectedCurrency');
          //getData(coin: cryptoList, currency: selectedCurrency);
        });
        print(selectedIndex);
      },
      children: pickerItems,
    );
  }
}