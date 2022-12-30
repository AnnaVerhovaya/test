import 'package:flutter/material.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key, this.height, this.width}) : super(key: key);

  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
    );
  }
}

class NewSkelton extends StatelessWidget {
  const NewSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Skeleton(
                width: 80,
                height: 28,
              ),
              const Skeleton(
                width: 80,
                height: 28,
              ),
              const Skeleton(
                width: 80,
                height: 28,
              ),
              const Skeleton(
                width: 80,
                height: 28,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Skeleton(
                    height: 40,
                    width: 40,
                  ),
                  title: Expanded(
                      child: Skeleton(
                    height: 65,
                  )),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
