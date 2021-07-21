package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-bf', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		animation.add('trolling', [24, 25], 0, false, isPlayer);
		animation.add('trolling2', [26, 27], 0, false, isPlayer);
		animation.add('trolling2e', [26, 27], 0, false, isPlayer);
		animation.add('trolling3', [28, 29], 0, false, isPlayer);
		animation.add('hex', [30, 31], 0, false, isPlayer);
		animation.add('whitty', [32, 33], 0, false, isPlayer);
		animation.add('ruv', [34, 35], 0, false, isPlayer);
		animation.add('ruv-playable', [34, 35], 0, false, isPlayer);
		animation.add('agoti', [36, 37], 0, false, isPlayer);
		animation.add('tabi', [38, 39], 0, false, isPlayer);
		animation.add('garcello-tired', [40, 41], 0, false, isPlayer);
		animation.add('sarvente', [42, 43], 0, false, isPlayer);
		animation.add('exTricky', [44, 45], 0, false, isPlayer);
		animation.add('monika', [46, 47], 0, false, isPlayer);
		animation.add('senpai-hd', [48, 49], 0, false, isPlayer);
		animation.add('selever', [50, 51], 0, false, isPlayer);
		animation.add('tricky', [52, 53], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel'| 'monika':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
