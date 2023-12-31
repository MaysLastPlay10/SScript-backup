package tea.backend;

import haxe.Http;

using StringTools;

abstract SScriptVer(Null<Int>)
{
 //   public static var newerVer(default, null):SScriptVer = SScriptVer(5, 0, 0);
    public inline function new(num1:Int, num2:Int, num3:Int) 
    {
        this = 0;
        //setVer(num1, num2, num3);
    }

/*    public inline function setVer(num1:Int, num2:Int, num3:Int):Void
    {
        var string:String = "";
        for (i in [num1, num2, num3])
            string += Std.string(i);

        this = Std.parseInt(string);
    }*/

   /* public function checkVer():Bool
    {
        var returnValue:Bool = true;
        try 
        {
            var me:Int = toInt();
            var me2:SScriptVer = fromString(toString());
            try 
            {
                var http = new Http('https://raw.githubusercontent.com/MaysLastPlay10/SScript-backup/gitVer.txt');

                http.onData = function(data:String)
                {
                    me2 = fromString(data);
                    if (me < me2.toInt())
                    {
                        returnValue = false;
                        newerVer = me2;
                    }
                }

                http.onError = function(msg:String) returnValue = true;
            }
            catch (e) returnValue = true;
        }
        catch (e) returnValue = true;

        return returnValue;
    }*/

    public static function fromString(string:String):SScriptVer
    {
        var nums:Array<Int> = [];

        for (i in string.split('.'))
            nums.push(Std.parseInt(i));

        return new SScriptVer(nums[0], nums[1], nums[2]);
    }

    public inline function toString():String
        return Std.string(this).split('').join('.');

    public inline function toInt():Int
        return this;
}