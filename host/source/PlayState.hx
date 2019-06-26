package;

import flixel.FlxState;
import flixel.FlxBasic;
import cpp.cppia.Host;

class PlayState extends FlxState
{
	override public function create():Void{
		super.create();

		//run script file
		Host.runFile('../../../../client/client.cppia');

		//resolve type defined in script
		var t = Type.resolveClass("ClientSprite");
		var inst = Type.createInstance(t, []);
		
		//move sprite to middle of the screen
		inst.x = 320;
		inst.y = 240;

		//Add sprite to scene
		add(cast(inst, FlxBasic));
	}

	//avoid DCE removing HostSprite because idk if @:keep affects cppia
	private function __whatever():HostSprite return null;
}