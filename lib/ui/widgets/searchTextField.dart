import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easyjob/bloc/offers_list_bloc/bloc.dart';

class SearchTextField extends StatefulWidget {
  SearchTextField({Key key}) : super(key: key);

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
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        onSubmitted: (searchQuary) {
          print(searchQuary);
          BlocProvider.of<OffersListBloc>(context).searchJob(searchQuary);
        },
        decoration: InputDecoration(
            hintText: "Search job...",
            border: InputBorder.none,
            icon: Icon(
              Icons.search,
              color: Colors.black.withOpacity(0.5),
            )),
      ),
    );
  }
}
