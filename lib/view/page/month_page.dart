import 'dart:async';

import 'package:a_bujo/view/router/router_helper.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 月页
class MonthPage extends StatefulWidget {
	@override
	_MonthPageState createState() => _MonthPageState();
}

class _MonthPageState extends State<MonthPage> {

	@override
	void initState() {
		super.initState();
	}

	@override
	void dispose() {
		super.dispose();

	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Text('月度记录页', style: Theme.of(context).textTheme.headline6),
						Text('Month Page',
							style: Theme.of(context).textTheme.headline6),
					],
				),
			),
		);
	}
}
