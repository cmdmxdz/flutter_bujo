import 'dart:async';

import 'package:a_bujo/view/router/router_helper.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 未来页
class FuturePage extends StatefulWidget {
	@override
	_FuturePageState createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {

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
						Text('未来页', style: Theme.of(context).textTheme.headline6),
						Text('Future Page',
							style: Theme.of(context).textTheme.headline6),
					],
				),
			),
		);
	}
}
