import 'package:flutter/material.dart';
import 'ImagePreview.dart';

class GridViewItemWidget extends StatelessWidget {
  const GridViewItemWidget({
    Key? key,
    required this.itemsToShow,
    required this.crossAxisCount,
    required this.gridImage,
  }) : super(key: key);

  final int itemsToShow;
  final int crossAxisCount;
  final List<String> gridImage;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: itemsToShow,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        if (index >= gridImage.length) return SizedBox();

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ImagePreviewScreen(
                  imageUrl: gridImage[index],
                ),
              ),
            );
          },
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/placeholder.png',
              image: gridImage[index],
              fit: BoxFit.cover,
              imageErrorBuilder: (context, error, stackTrace) =>
                  Center(child: Icon(Icons.broken_image, size: 40)),
            ),
          ),
        );
      },
    );
  }
}
