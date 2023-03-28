import 'dart:async';

import 'package:a_bujo/view/router/router_helper.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 自定义页
class CustomPage extends StatefulWidget {
	@override
	_SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<CustomPage> {

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
						Text('自定义集子页', style: Theme.of(context).textTheme.headline6),
						Text('Custom Page',
							style: Theme.of(context).textTheme.headline6),
					],
				),
			),
		);
	}
}
