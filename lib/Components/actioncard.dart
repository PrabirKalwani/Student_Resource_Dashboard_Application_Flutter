import 'package:flutter/material.dart';

class ActionCard extends StatefulWidget {
  final Function? onPressed;
  final IconData? icon;
  final String? title;
  final Color? color;

  const ActionCard(
      {Key? key, this.onPressed, this.icon, this.title, this.color})
      : super(key: key);

  // ActionCard({this.onPressed, this.icon, this.title, this.color});

  @override
  State<ActionCard> createState() => _ActionCardState();
}

class _ActionCardState extends State<ActionCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => widget.onPressed!(),
      child: Ink(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 0.24,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.tertiary,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.color,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.title!,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 14,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class WideActionCard extends StatefulWidget {
  final Function? onPressed;
  final IconData? icon;
  final String? title;
  final Color? color;

  const WideActionCard(
      {Key? key, this.onPressed, this.icon, this.title, this.color})
      : super(key: key);

  @override
  State<WideActionCard> createState() => _WideActionCardState();
}

class _WideActionCardState extends State<WideActionCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => widget.onPressed!(),
      child: Ink(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 0.53,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.tertiary,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.color,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.title!,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 14,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoomActionCard extends StatefulWidget {
  final Function? onPressed;
  final IconData? icon;
  final String? title;
  final String? subtitle;
  final Color? color;

  const RoomActionCard(
      {Key? key,
      this.onPressed,
      this.icon,
      this.title,
      this.subtitle,
      this.color})
      : super(key: key);

  @override
  State<RoomActionCard> createState() => _RoomActionCardState();
}

class _RoomActionCardState extends State<RoomActionCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => widget.onPressed!(),
      child: Ink(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 0.24,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.tertiary,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.color,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.title!,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 14,
                  ),
            ),
            Text(
              widget.subtitle!,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 11,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
