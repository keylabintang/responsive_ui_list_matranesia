import 'package:flutter/material.dart';
import 'package:responsive_ui_makanan_tradisional/matranesia.dart';

class DetailPage extends StatelessWidget {
  final Food food;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return _buildVertical();
        } else {
          return _buildHorizontal();
        }
      },
    );
  }

  DetailPage({required this.food});

  Widget _buildVertical() {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 60, 159, 159),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              height: 300,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(food.imagePath),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Makanan Khas ${food.origin}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 60, 159, 159),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Text(
                    '${food.deskripsi}',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontal() {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 60, 159, 159),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 300,
                    width: 300,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Image.network(food.imagePath),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Makanan Khas ${food.origin}',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.favorite)),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.share)),
                            ],
                          ),
                          SizedBox(height: 30),
                          Text(
                            '${food.deskripsi}',
                            maxLines: 10,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
