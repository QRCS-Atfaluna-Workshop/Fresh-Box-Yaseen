import 'package:flutter/material.dart';

class CryptoTask extends StatelessWidget {
  const CryptoTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Container(
          width: 350,
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF1A1A1A),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1621761191319-c6fb62004040?q=80&w=1000",
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        color: Colors.black87,
                        width: 100,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          "VIP MEMBER",
                          style: TextStyle(color: Colors.amber),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Crypto Balance",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Icon(Icons.account_balance_wallet, color: Colors.blue),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "0.456 BTC",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Send",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue),
                        ),

                        child: Text(
                          "Receive ",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
