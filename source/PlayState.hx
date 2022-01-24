package;

import flixel.FlxG;
import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.justPressed.ANY)
		{
			trace("ANY");
		}
		if (FlxG.mouse.justPressed && FlxG.keys.justPressed.NONE)
		{
			trace("NONE");
		}
	}
}
