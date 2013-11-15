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

include <bitmap.scad>;

mm=25.4;
myheight=2+(5/6);
mywidth=6;
mythickness=3;

top_chars = ["N","E","W","","B","L","A","N","K","E","T","S"];
top_char_count = 12;
top_block_size = 0.75;
top_height = 5;

chars = ["A","R","T","I","S","T","","I","N","","T","R","A","N","S","I","T"];
char_count = 17;
block_size = 1;
height = 5;

union() {

	translate( v=[0,0,mythickness/2] ) {
		cube( size=[mywidth*mm,myheight*mm,mythickness], center=true );
	}

	union() {
		rotate( a=[0,0,-90] ) {
			translate(v = [-20,-block_size*8*char_count/2+block_size*8/2,0]) {
				8bit_str(top_chars, top_char_count, top_block_size, top_height);
			}
		}
	}

	union() {
		rotate( a=[0,0,-90] ) {
			translate(v = [0,-block_size*8*char_count/2+block_size*8/2,0]) {
				8bit_str(chars, char_count, block_size, height);
			}
		}
	}

}
