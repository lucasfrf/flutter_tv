import 'package:flutter/material.dart';
import 'package:flutter_tv/components/card/default_card.dart';
import 'package:flutter_tv/enuns/action_card_click.dart';
import 'package:flutter_tv/model/imagem.dart';

class Catalog extends StatelessWidget {
  Catalog({
    super.key,
    required this.listImagem,
    required this.actionClick,
    this.title = '',
    this.height = 200.0,
    this.width = 200.0,
    this.expand = true,
  });
  final List<Imagem> listImagem;
  final ActionCardClick actionClick;
  final String title;
  final double height;
  final double width;
  final bool expand;
  final GlobalKey _listKey = GlobalKey();
  final List<Widget> _listWidget = [];

  setListaWidget() {
    for (var imgagem in listImagem) {
      _listWidget.add(DefaultCard(
        imagem: imgagem,
        height: height,
        width: width,
        actionClick: actionClick,
        expand: expand,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    setListaWidget();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, top: 18.0),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              key: _listKey,
              itemCount: _listWidget.length,
              itemBuilder: (context, index) {
                return _listWidget[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
