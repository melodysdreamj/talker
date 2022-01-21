import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

class TalkerDataCard extends StatelessWidget {
  const TalkerDataCard({
    Key? key,
    required this.data,
    required this.onTap,
  }) : super(key: key);

  final TalkerDataInterface data;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final title = _getTitle(data);

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            margin: const EdgeInsets.all(5).copyWith(bottom: 0),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: _color),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Message  ',
                          style: TextStyle(
                            color: _color,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: data.displayMessage,
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Time  ',
                          style: TextStyle(
                            color: _color,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: data.displayTime,
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (data.stackTrace != null)
                        RichText(
                          text: TextSpan(
                            text: 'StackTrace  ',
                            style: TextStyle(
                              color: _color,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: data.displayStackTrace,
                                style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (data.additional != null)
                        RichText(
                          text: TextSpan(
                            text: 'Additional  ',
                            style: TextStyle(
                              color: _color,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: data.displayAditional,
                                style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 26,
                  child: IconButton(
                    iconSize: 20,
                    onPressed: onTap,
                    icon: Icon(
                      Icons.copy,
                      color: _color,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 15,
            child: Container(
              transform: Matrix4.translationValues(0, -8, 0),
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              child: Text(
                title,
                style: TextStyle(
                  color: _color,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color get _color {
    if (data is HaveFlutterColorInterface) {
      return (data as HaveFlutterColorInterface).color ?? data.logLevel.color;
    }
    return data.logLevel.color;
  }

  String _getTitle(TalkerDataInterface data) => data.displayTitle;
}
