import 'dart:async';

import 'package:a_bujo/view/router/router_helper.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 周页
class WeekPage extends StatefulWidget {
	@override
	_WeekPageState createState() => _WeekPageState();
}

class _WeekPageState extends State<WeekPage> {

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
						Text('周页', style: Theme.of(context).textTheme.headline6),
						Text('Week Page',
							style: Theme.of(context).textTheme.headline6),
					],
				),
			),
		);
	}
}
