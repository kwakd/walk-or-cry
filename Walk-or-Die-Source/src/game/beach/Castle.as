//FILE DONE
package game.beach
{
	import game.Item;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	public class Castle extends Item
	{	
		public static var seen:Boolean = false;	//DONE
		
		/**
		 * Graphics
		 */
		[Embed(source = '../../../assets/beach/sand_castle.png')] private const SPRITE01:Class;				
		
		public function Castle() 
		{	
			super(SPRITE01, 'far', false);	//DONE
			type = 'sand_castle';	
		
			layer = 99;			//DONE
		}
		
		override public function update():void 
		{
			super.update();
		}
	}
}