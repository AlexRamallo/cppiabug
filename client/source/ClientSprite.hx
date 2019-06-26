import flixel.FlxG;

class ClientSprite extends HostSprite {
	var vspeed:Float = 0;
	var ystart:Float = 0;

	override public function oninit(){
		ystart = y;
		trace('oninit');
	}

	override public function update(e:Float):Void {
		some_function(e);

		if(y < ystart || vspeed < 0){
			vspeed += 0.5;
			y += vspeed;
		}else{
			vspeed = 0;
			y = ystart;
		}

		if(FlxG.keys.justPressed.SPACE){
			vspeed = -10;
		}
	}
}