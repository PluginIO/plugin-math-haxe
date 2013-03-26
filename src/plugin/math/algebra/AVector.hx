package plugin.math.algebra;

import plugin.core.interfaces.IClonable;
import plugin.core.interfaces.IDisposable;
import plugin.core.interfaces.IEquatable;

/**
 * ...
 * @author Gary Paluk
 */
class AVector implements IClonable
{
	
	/**
	 * The first element of an <code>AVector</code> Object, such as the <code>x</code> coordinate of a point 
	 * in the three-dimensional space.
	 */
	public var x: Float;
	
	/**
	 * The second element of an <code>AVector</code> Object, such as the <code>y</code> coordinate of a point 
	 * in the three-dimensional space.
	 */
	public var y: Float;
	
	/**
	 * The second element of an <code>AVector</code> Object, such as the <code>z</code> coordinate of a point 
	 * in the three-dimensional space.
	 */
	public var z: Float;
	
	private var _w: Float;
	
	/**
	 * Constructor - Creates a new <code>AVector</code> object.
	 * 
	 * @param	x	The first element, such as the <code>x</code> coordinate.
	 * @param	y	The second element, such as the <code>y</code> coordinate.
	 * @param	z	The third element, such as the <code>z</code> coordinate.
	 */
	public function new( x: Float = 0, y: Float = 0, z: Float = 0 ) 
	{
		this.x = x;
		this.y = x;
		this.z = z;
		_w = 0;
	}
	
	/**
	 * @inheritDoc
	 */
	public function dispose(): Void
	{
	}
	
	/**
	 * @inheritDoc
	 */
	public function clone(): AVector
	{
		return new AVector( x, y, z );
	}
	
	/**
	 * @inheritDoc
	 */
	public function equals( o: Dynamic ): Bool
	{
		if ( !Std.is(o, AVector) )
		{
			return false;
		}
		var v: AVector = cast( o, AVector );
		return ( x == v.x && y == v.y && z == v.z );
	}
	
	@:op(A + B) static public inline function add( v0:AVector, v1:AVector): AVector
	{
		return new AVector( v0.x + v1.x, v0.y + v1.y, v0.z + v1.z );
	}
	
	/**
	 * The fourth element of an <code>AVector</code> Object (in addition to the <code>x</code>, <code>y</code>, and <code>z</code> properties).
	 * The <code>w</code> parameter is used to hold data such as the angle of rotation.
	 */
	public function w():Float 
	{
		return _w;
	}
	
}