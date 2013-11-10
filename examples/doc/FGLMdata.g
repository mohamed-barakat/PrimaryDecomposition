#! @System FGLMdata
#! @Example
LoadPackage( "PrimaryDecomposition" );
#! true
Q := HomalgFieldOfRationalsInSingular( );
#! Q
A := Q * "x,y,z";
#! Q[x,y,z]
I := LeftSubmodule( "x^3-x, y*x^2-y,y^2-x^2,z-x*y", A );
#! <A torsion-free ideal given by 4 generators>
R := A / I;
#! Q[x,y,z]/( x^3-x, x^2*y-y, -x^2+y^2, -x*y+z )
F:= FGLMdata(R);
#! [ <A 5 x 5 matrix over an external ring>,
#!   <A 5 x 5 matrix over an external ring>,
#!   <A 5 x 5 matrix over an external ring> ]
Display(F[1]);
#! 0,1,0,0,0,
#! 0,0,0,0,1,
#! 0,0,0,1,0,
#! 0,0,1,0,0,
#! 0,1,0,0,0 
Display(F[2]);
#! 0,0,1,0,0,
#! 0,0,0,1,0,
#! 0,0,0,0,1,
#! 0,1,0,0,0,
#! 0,0,1,0,0 
Display(F[3]);
#! 0,0,0,1,0,
#! 0,0,1,0,0,
#! 0,1,0,0,0,
#! 0,0,0,0,1,
#! 0,0,0,1,0 
#! @EndExample