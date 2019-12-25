import 'package:easyjob/bloc/offers_list_bloc/bloc.dart';
import 'package:easyjob/model/just_join_it/model.dart';
import 'package:easyjob/ui/widgets/searchTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class OffersList extends StatefulWidget {
  _OffersListState createState() => _OffersListState();
}

class _OffersListState extends State<OffersList> {
  final OffersListBloc _bloc = kiwi.Container().resolve<OffersListBloc>();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: _build(),
    );
  }

  Widget _build() {
    return Scaffold(
        appBar: AppBar(
          title: Text("EasyJob"),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: SearchTextField(),
            ),
            Flexible(
              child: BlocBuilder(
                bloc: _bloc,
                builder: (context, OffersListState state) {
                  if (state.isInitial) {
                    BlocProvider.of<OffersListBloc>(context)
                        .add(OfferListLoad());
                    return _buildLoadingCircle();
                  }

                  if (state.isLoading) {
                    return _buildLoadingCircle();
                  }

                  if (state.isSuccessful) {
                    return _buildResultList(state);
                  }
                },
              ),
            ),
          ],
        )));
  }

  Widget _buildResultList(OffersListState state) {
    return NotificationListener<ScrollNotification>(
      child: ListView.builder(
          itemCount: state.offers.length,
          controller: _scrollController,
          itemBuilder: (context, index) {
            return _buildCell(state.offers[index]);
          }),
    );
  }

  Widget _buildCell(Offer offer) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network(
              offer.company_logo_url,
              fit: BoxFit.contain,
              height: 30,
              width: 80,
            ),
            SizedBox(
              width: 12.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(offer.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 2.0),
                  _salaryIsSeted(offer),
                  SizedBox(height: 12.0)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _salaryIsSeted(Offer offer) {
    if (offer.salary_from != null &&
        offer.salary_to != null &&
        offer.salary_currency != null) {
      return Text(
          "${offer.salary_from} - ${offer.salary_to} ${offer.salary_currency.toUpperCase()}",
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(fontSize: 12));
    } else {
      return Text("Stawka nie nieznana.",
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(fontSize: 12));
    }
  }

  Widget _buildLoadingCircle() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
