unit package Postscript::Encoding;

sub encode(Str $string,
              :$encoding = %PostScript::Encoding::Standard::encoding
           --> Blob
          ) {
  Blob.new(($string.comb>>.ord.map: { $encoding{$_} // -1 }).grep({$_ >= 0}));
}

sub decode(Blob $ps-string,
               :$encoding = @PostScript::Encoding::Standard::decoding
           --> Str
          ) {
  ($ps-string.map: { $encoding[$_] } ).grep({ $_ >= 0})>>.chr.join;
}
