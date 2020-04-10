import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easyjob/bloc/offers_list_bloc/bloc.dart';

class SearchTextField extends StatefulWidget {
  SearchTextField(
      {Key key, this.hintText, this.icon, this.onChange, this.onTap})
      : super(key: key);

  final String hintText;
  final IconData icon;

  @nullable
  final Function(String) onChange;
  final Function() onTap;

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.selection =
            TextSelection(baseOffset: 0, extentOffset: _controller.text.length);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        onTap: widget.onTap,
        onChanged: widget.onChange,
        onSubmitted: (searchedQuary) {
          BlocProvider.of<OffersListBloc>(context).searchJob();
        },
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          icon: Icon(
            widget.icon,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
