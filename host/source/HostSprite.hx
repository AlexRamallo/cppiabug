import flixel.FlxSprite;

class HostSprite extends FlxSprite {
	public function new(){
		super();
	}
	
	/**
		This is overridden in the script
	*/
	public function oninit():Void{
		trace('HostSprite::oninit');
	}

	/**
		This is called (but not overridden) from inside another
		function (FlxSprite.update) that is overridden in the script
	*/
	public function some_function(elapsed:Float){
		trace('some_function');
	}
}