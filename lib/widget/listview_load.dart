import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CardListViewLoading extends StatelessWidget {
  const CardListViewLoading({
    Key key,
  }) : super(key: key);

  static const _highLightColor = Color.fromRGBO(181,181,181, .8);
  static const _baseColor = Color.fromRGBO(200,200,200, .1);
  static const _duration = Duration(milliseconds: 4000);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext ctx, int index) {
        return cardLoad();
      },
    );
  }

  Card cardLoad() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      margin: new EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 8.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(200,200,200, .3),
        ),
        child: Padding(
                  padding: EdgeInsets.only(right: 100.0),
                  child: ListTile(
          title: Shimmer.fromColors(
            highlightColor: _highLightColor,
            baseColor: _baseColor,
            period: _duration,
            child: Container(
              height: 18,
              
              color: _highLightColor,
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(right: 80.0),
                  child: Shimmer.fromColors(
                    highlightColor: _highLightColor,
                    baseColor: _baseColor,
                    period: _duration,
                    child: Container(
                      height: 18,
                      width: 10,
                      color: _highLightColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}