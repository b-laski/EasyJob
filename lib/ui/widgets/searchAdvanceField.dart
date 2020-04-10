import 'package:easyjob/bloc/offers_list_bloc/bloc.dart';
import 'package:easyjob/ui/widgets/searchTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchAdvanceField extends StatefulWidget {
  SearchAdvanceField({Key key}) : super(key: key);

  @override
  _SearchAdvanceFieldState createState() => _SearchAdvanceFieldState();
}

class _SearchAdvanceFieldState extends State<SearchAdvanceField> {
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
      child: Column(
        children: <Widget>[
          SearchTextField(
            hintText: "Search job",
            icon: Icons.search,
            onChange: (searchQuary) {
              BlocProvider.of<OffersListBloc>(context).searchQuary =
                  searchQuary;
            },
          ),
          SearchTextField(
            hintText: "City",
            icon: Icons.location_city,
            onChange: (searchQuary) {
              BlocProvider.of<OffersListBloc>(context).searchCityQuary =
                  searchQuary;
            },
          )
        ],
      ),
    );
  }
}
