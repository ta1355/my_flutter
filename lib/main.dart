import 'package:flutter/material.dart';
import 'package:my_flutter/widgets/button.dart';
import 'package:my_flutter/widgets/currency_card.dart';

void main() {
  var um = Player(name: "siuuuuu");
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(37, 37, 37, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'siuuu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "welcome",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 70),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Button(
                      text: "transfer",
                      bgColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    SizedBox(width: 20),
                    Button(
                      text: "request",
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CurrencyCard(
                  name: 'Euro',
                  code: "EUR",
                  amount: "6 428",
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: Offset(0, -20),
                  child: CurrencyCard(
                    name: 'Bitcoin',
                    code: "BTC",
                    amount: "9 785",
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -40),
                  child: CurrencyCard(
                    name: 'Dollar',
                    code: "USD",
                    amount: "428",
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Player {
  String? name;

  Player({required this.name});
}
