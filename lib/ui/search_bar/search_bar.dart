import 'package:easyjob/bloc/search_bar_bloc/bloc.dart';
import 'package:easyjob/bloc/search_bar_bloc/search_bar_bloc.dart';
import 'package:easyjob/ui/widgets/searchAdvanceField.dart';
import 'package:easyjob/ui/widgets/searchTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final SearchBarBloc _bloc = kiwi.Container().resolve<SearchBarBloc>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder(
              bloc: _bloc,
              builder: (context, SearchBarState state) {
                if (state.isAdvanceSearching) {
                  return _buildAdvanceSearching();
                }

                return _buildSimpleSearching();
              },
            ),
            ButtonTheme(
              minWidth: 20,
              child: FlatButton(
                onPressed: () {
                  if (_bloc.isAdvanceMenuOpen) {
                    _bloc.showAdvanceMenu();
                  } else {
                    _bloc.hideAdvanceMenu();
                  }
                },
                child: Icon(Icons.arrow_drop_down),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAdvanceSearching() {
    return SearchAdvanceField();
  }

  Widget _buildSimpleSearching() {
    return SearchTextField(
      hintText: "Search Job",
      icon: Icons.search,
    );
  }
}

// Padding(
//           padding: const EdgeInsets.only(left: 24.0, right: 0.0),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               BlocBuilder(
//                   bloc: _bloc,
//                   builder: (context, OffersListState state) {
//                     if (state.isAdvanceSearching) {
//                       return _buildAdvanceSearching(state.isAdvanceSearching);
//                     } else {
//                       return _buildAdvanceSearching(false);
//                     }
//                   }),
//               ButtonTheme(
//                 minWidth: 20,
//                 child: FlatButton(
//                   onPressed: () {
//                     _bloc.isAdvanceSearchingTapped();
//                   },
//                   child: Icon(Icons.arrow_drop_down),
//                 ),
//               )
//             ],
//           ),
//         ),
