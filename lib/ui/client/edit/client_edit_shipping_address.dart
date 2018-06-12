import 'package:flutter/material.dart';
import 'package:invoiceninja/data/models/models.dart';
import 'package:invoiceninja/ui/client/edit/client_edit.dart';
import 'package:invoiceninja/utils/localization.dart';

class ClientEditShippingAddress extends StatefulWidget {
  ClientEditShippingAddress({
    Key key,
    @required this.client,
  }) : super(key: key);

  final ClientEntity client;

  @override
  ClientEditShippingAddressState createState() =>
      new ClientEditShippingAddressState();
}

class ClientEditShippingAddressState extends State<ClientEditShippingAddress>
    with AutomaticKeepAliveClientMixin {
  String shippingAddress1;
  String shippingAddress2;
  String shippingCity;
  String shippingState;
  String shippingPostalCode;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    var localization = AppLocalization.of(context);
    var client = widget.client;

    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Card(
          elevation: 2.0,
          child: Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 12.0, bottom: 18.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    autocorrect: false,
                    onSaved: (value) => shippingAddress1 = value.trim(),
                    initialValue: client.shippingAddress1,
                    decoration: InputDecoration(
                      labelText: localization.address1,
                    ),
                  ),
                  TextFormField(
                    autocorrect: false,
                    onSaved: (value) => shippingAddress2 = value.trim(),
                    initialValue: client.shippingAddress2,
                    decoration: InputDecoration(
                      labelText: localization.address2,
                    ),
                  ),
                  TextFormField(
                    autocorrect: false,
                    onSaved: (value) => shippingCity = value.trim(),
                    initialValue: client.shippingCity,
                    decoration: InputDecoration(
                      labelText: localization.city,
                    ),
                  ),
                  TextFormField(
                    autocorrect: false,
                    onSaved: (value) => shippingState = value.trim(),
                    initialValue: client.shippingState,
                    decoration: InputDecoration(
                      labelText: localization.state,
                    ),
                  ),
                  TextFormField(
                    autocorrect: false,
                    onSaved: (value) => shippingPostalCode = value.trim(),
                    initialValue: client.shippingPostalCode,
                    decoration: InputDecoration(
                      labelText: localization.postalCode,
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ],
              )),
        ),
      ],
    );
  }
}