import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tv/enuns/action_card_click.dart';
import 'package:flutter_tv/model/imagem.dart';

class DefaultCard extends StatefulWidget {
  const DefaultCard({
    super.key,
    required this.imagem,
    required this.height,
    required this.width,
    required this.actionClick,
    this.expand = true,
  });
  final Imagem imagem;
  final double height;
  final double width;
  final ActionCardClick actionClick;
  final bool expand;

  @override
  State<DefaultCard> createState() => _DefaultCardState();
}

class _DefaultCardState extends State<DefaultCard> {
  late bool _isInitialValue = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.white,
      onTap: () {
        switch (widget.actionClick) {
          case ActionCardClick.openHomeScreen:
            Navigator.pushReplacementNamed(context, "home");
            break;
          default:
            null;
        }
      },
      onFocusChange: (value) {
        if (widget.expand) {
          setState(() {
            _isInitialValue = !_isInitialValue;
          });
        }
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: _isInitialValue ? widget.width : widget.width + 50,
        child: SizedBox(
          height: widget.height,
          width: widget.width,
          child: Card(
            color: Colors.black12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: CachedNetworkImage(
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    imageUrl: widget.imagem.address,
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.imagem.title,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
