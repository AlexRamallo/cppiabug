## Dependencies

Haxelibs:

```
haxelib install openfl
haxelib install flixel
haxelib run openfl setup
```

Tested on these versions:

Haxe version: `4.0.0-rc.3+e3df7a4`

```
$ haxelib -list
actuate: [1.8.9]
box2d: [1.2.3]
flixel-addons: [2.7.5]
flixel-demos: [2.7.1]
flixel-templates: [2.6.2]
flixel-tools: [1.4.4]
flixel-ui: [2.3.2]
flixel: [4.6.2]
hxcpp: 4.0.8 [4.0.19]
layout: [1.2.1]
lime-samples: [7.0.0]
lime: [7.5.0]
openfl-samples: [8.7.0]
openfl: [8.9.1]
```

## Build client

```
cd client && haxe build.hxml
```

## Build host

```
cd host && haxelib run openfl test <windows/linux/etc>
```

## Bug

Modify `host/source/HostSprite.hx` by moving the declaration of the function `oninit` to another place in the same class. For example, move it to be defined after `some_function`, and notice how the runtime behavior will change.