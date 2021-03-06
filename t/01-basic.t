use v6.c;
use Test;
use PostScript::Encoding;
use PostScript::Encoding::Standard;
use PostScript::Encoding::Iso;
use PostScript::Encoding::CE;
use PostScript::Encoding::Symbol;

my $ps-string1 = "Hello, World!";
my $ps-blob1   = Blob.new(0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x2a, 0x20, 0x57, 0x6f, 0x72, 0x6c, 0x64, 0x21);
my $ps-blob1   = Blob.new(0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x2a, 0xa0, 0x57, 0x6f, 0x72, 0x6c, 0x64, 0x21);

done-testing;
