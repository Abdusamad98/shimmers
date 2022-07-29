import 'package:flutter/material.dart';
import 'package:shimmers/internal_packages/shimmer.dart';

class MyShimmerLoader extends StatelessWidget {
  const MyShimmerLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      // direction: ShimmerDirection.ttb,
      period: const Duration(seconds: 2),
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: 60,
              height: 60,
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 10,
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 10,
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
