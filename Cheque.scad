//
// 3D Cheque (bank check)
//
// designed for New Blankets Artist-In-Transit presentation
//
// created by Theron Trowbridge (Bangsplat)
// created:	2013-11-11
// modified:	2013-11-11
// 
// dimensions taken from:
// https://www.businesschecksprinting.com/check-dimensions-ezp-22.html
//

mm=25.4;
myheight=2+(5/6);
mywidth=6;
mythickness=4;
translate( v=[0,0,mythickness/2] ) {
	cube( size=[mywidth*mm,myheight*mm,mythickness], center=true );
}
