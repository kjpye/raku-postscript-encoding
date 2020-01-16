# Raku PostScript::Encoding

Raku modules to handle encoding/decoding Unicode strings to and from various PostScript character encodings.

PostScript, which predates Unicode significantly, uses eight-bit character sets. While it is possible to define any encoding you wish, there are several predefined encodings:

* The Standard encoding, which contains ASCII plus some useful characters in the upper half of the range.
* The ISΩencoding, which more-or-less matches the standard Latin-1 character set
* The Symbol encoding, used for symbol fonts
× The CE encoding, which contains ASCII in the lower half and other characters useful for Central European languages in the upper half
* The Expert encoding, used by some fonts for "sophisticated typography" (and the ExpertSubset encoding which is a subset.)

There are modules here which can perform all of these encodings except for the Expert and ExpertSubset encodings which include characters like small capitals, which aren't handled directly by Unicode.

Note that the encodings are only used inside strings to be printed. A PostScript file is otherwise pure ASCII.

## Usage ##

use PostScript::Encoding;
use PostScript::Encoding::Standard;

my Blob $ps-string = PostScript::Encoding::decode("Raku string", @PostScript::Encoding::Iso::decode);
my Str $uc-string  = PostScript::Encoding::encode($ps-string, %PostScript::Encoding::Iso::encode);
