import 'dart:async';

import 'package:a_bujo/view/router/router_helper.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 索引页
class DayPage extends StatefulWidget {
	@override
	_DayPageState createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {

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
						Text('索引页', style: Theme.of(context).textTheme.headline6),
						Text('Index Page',
							style: Theme.of(context).textTheme.headline6),
					],
				),
			),
		);
	}
}
