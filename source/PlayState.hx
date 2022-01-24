package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.tweens.misc.ColorTween;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var textWTF:FlxText;
	var textANY:FlxText;
	var textNONE:FlxText;
	var tweenTextANY:ColorTween;
	var tweenTextNONE:ColorTween;

	override public function create()
	{
		super.create();
		textWTF = new FlxText(0, 0, FlxG.width, "Press any key to test ANY key was pressed, click mouse to test NONE key was ... not pressed?", 25);
		add(textWTF);

		var any:Int = FlxKey.ANY;
		textANY = new FlxText(0, 0, 0, 'ANY $any', 50);
		textANY.screenCenter();
		textANY.y -= 50;
		add(textANY);

		var none:Int = FlxKey.NONE;
		textNONE = new FlxText(0, 0, 0, 'NONE $none', 50);
		textNONE.screenCenter();
		textNONE.y += 50;
		add(textNONE);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.justPressed.ANY)
		{
			var any:Int = FlxKey.ANY;
			trace('ANY $any');
			if (tweenTextANY != null)
			{
				tweenTextANY.cancel();
				textANY.color = FlxColor.WHITE;
			}
			tweenTextANY = FlxTween.color(textANY, 0.33, FlxColor.LIME, FlxColor.WHITE);
		}
		if (FlxG.mouse.justPressed && FlxG.keys.justPressed.NONE)
		{
			var none:Int = FlxKey.NONE;
			trace('NONE $none');
			if (tweenTextNONE != null)
			{
				tweenTextNONE.cancel();
				textNONE.color = FlxColor.WHITE;
			}
			tweenTextNONE = FlxTween.color(textNONE, 0.33, FlxColor.LIME, FlxColor.WHITE);
		}
	}
}
