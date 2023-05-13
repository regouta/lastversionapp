/*import 'package:flutter/material.dart';

class ButtonColors {
  static const Color backgroundColor = Color(0xFFEAEAEA);
  static const Color defaultColor = Color(0xFF333333);
  static const Color emerald = Color(0xFF2ECC71);
  static const Color peterRiver = Color(0xFF3498DB);
  static const Color amethyst = Color(0xFF9B59B6);
  static const Color wetAsphalt = Color(0xFF34495E);
  static const Color carrot = Color(0xFFE67E22);
  static const Color alizarin = Color(0xFFE74C3C);
}

class AnimatedButton extends StatefulWidget {
  final double height;
  final double width;
  final String text;
  final Color animationColor;

  const AnimatedButton({super.key, 
    required this.height,
    required this.width,
    required this.text,
    required this.animationColor, required Null Function() onPressed,
  });

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late Color textColor;
  late Color borderColor;
  late AnimationController _controller;
  late Animation _animation;
  late Animation _borderAnimation;

  @override
  void initState() {
    super.initState();
    textColor = ButtonColors.defaultColor;
    borderColor = ButtonColors.defaultColor;
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _animation = Tween(begin: 0.0, end: 500.0)
        .animate(CurvedAnimation(curve: Curves.easeIn, parent: _controller))
      ..addListener(() {
        setState(() {});
      });
    _borderAnimation =
        ColorTween(begin: ButtonColors.defaultColor, end: widget.animationColor)
            .animate(
      CurvedAnimation(curve: Curves.easeInOut, parent: _controller),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide(
              color: _borderAnimation.value,
              width: 2,
            ),
          ),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              if (value) {
                _controller.forward();
                setState(() {
                  textColor = Colors.white;
                  borderColor = widget.animationColor;
                });
              } else {
                _controller.reverse();
                setState(() {
                  textColor = ButtonColors.defaultColor;
                  borderColor = ButtonColors.defaultColor;
                });
              }
            },
            child: Container(
              color: ButtonColors.backgroundColor,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: widget.animationColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: _animation.value,
                    ),
                  ),
                  Center(
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      style: TextStyle(color: textColor),
                      curve: Curves.easeIn,
                      child: Text(widget.text),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/
