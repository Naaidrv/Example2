import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MiPCard extends StatelessWidget {
  final String? imageURL;
  final Widget? titleWidget;
  final EdgeInsetsGeometry? titlePadding;
  final Widget? subtitleWidget;
  final EdgeInsetsGeometry? subtitlePadding;
  final Widget? mainButton;
  final Widget? secondaryButton;
  final Color? customColor;

  const MiPCard(
      {Key? key,
      this.imageURL,
      this.titleWidget,
      this.subtitleWidget,
      this.mainButton,
      this.secondaryButton,
      this.subtitlePadding,
      this.titlePadding,
      this.customColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width <= 520
              ? MediaQuery.of(context).size.width
              : 520),
      child: Card(
        color: customColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            imageURL == null
                ? Container()
                : Flexible(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Container(
                        constraints: const BoxConstraints(minHeight: 120),
                        child: CachedNetworkImage(
                          imageUrl: imageURL!,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            )),
                          ),
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  CircularProgressIndicator(
                                      value: downloadProgress.progress),
                          errorWidget: (context, url, error) {
                            print(error);
                            return const Icon(Icons.error);
                          },
                        ),
                      ),
                    ),
                  ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: titlePadding == null
                        ? const EdgeInsets.all(8.0)
                        : titlePadding!,
                    child: titleWidget == null ? Container() : titleWidget!,
                  ),
                  Padding(
                    padding: subtitlePadding == null
                        ? const EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 8.0)
                        : subtitlePadding!,
                    child:
                        subtitleWidget == null ? Container() : subtitleWidget!,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      mainButton == null
                          ? Container()
                          : Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, bottom: 8.0, right: 14.0),
                              child: mainButton!,
                            ),
                      secondaryButton == null
                          ? Container()
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: secondaryButton!,
                            ),
                    ],
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
