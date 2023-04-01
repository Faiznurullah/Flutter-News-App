import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter News'),
          backgroundColor: Color.fromARGB(255, 178, 120, 192),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2023/03/27/08/47/cows-7880154__340.jpg',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum vel quam ut luctus. Quisque id scelerisque nisl. Nullam tellus tortor, dignissim tempus sem eu, venenatis vehicula nulla. Fusce nisl mauris, blandit eget ipsum et, congue pretium arcu. Integer sem erat, sollicitudin porttitor aliquet nec, rhoncus quis nisl. Nulla quam tortor, facilisis ut vehicula vel, convallis vitae metus. Praesent risus leo, finibus ut dolor ut, elementum ultrices neque. In blandit justo nec tempus porttitor. Suspendisse potenti. Cras vulputate, urna non molestie efficitur, risus leo semper nisl, eget ultrices quam metus et augue. Donec volutpat efficitur urna at vehicula. Duis tortor tellus, eleifend mattis erat vel, semper vehicula erat. Donec vel malesuada eros, ut tincidunt mi. Nam in sagittis metus, in laoreet sapien. Maecenas auctor quis mi vitae placerat. Vivamus non blandit velit. Nullam aliquam gravida elementum. Nulla mi risus, lacinia non felis ut, iaculis cursus libero. Morbi quis magna nulla. Pellentesque tristique diam ligula, vitae iaculis odio ullamcorper et. Vivamus tempus commodo lacus vitae dapibus. In nec commodo lectus, a interdum mauris. Fusce in semper nunc. Vivamus tempor, tellus in tempus dignissim, magna nibh tempor tortor, quis scelerisque lacus nibh sed urna. Praesent semper, mi ac convallis vulputate, nibh metus facilisis enim, eget finibus arcu est hendrerit purus. Donec risus nunc, dictum in metus iaculis, cursus sagittis odio. Curabitur finibus bibendum nibh vel finibur',
                maxLines: null,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 95,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('kembali'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 178, 120, 192),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
