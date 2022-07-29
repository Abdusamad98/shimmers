import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmers/widgets/my_shimmer_loader.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shimmers"),
      ),
      body: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: "http://via.placeholder.com/200x150",
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        colorFilter:
                       const ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
                  ),
                ),
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              CachedNetworkImage(
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/commons/c/cc/Yours_Food_Logo.jpg",
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) =>const Icon(Icons.error),
              ),
              Expanded(
                child: ListView(
                  children: List.generate(100, (index) => MyShimmerLoader()),
                ),
              ),
            ],
          )),
    );
  }
}
