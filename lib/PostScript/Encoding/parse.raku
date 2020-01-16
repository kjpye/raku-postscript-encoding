#!/usr/bin/env raku

my @lines = lines();

@lines.shift;
@lines.shift;

my @standard = -1 xx 256;
my @iso      = -1 xx 256;
my @ce       = -1 xx 256;
my @symbol   = -1 xx 256;

for @lines -> $line {
  my ($count, $unicode, $standard-octal, $standard-hex, $iso-octal, $iso-hex, $ce-octal, $ce-hex, $symbol-octal, $symbol-hex, $ps-name, $unicode-name) = $line.split: ',';
  $unicode ~~ s:i/^u\+//;
  $unicode ~~ s:i/^0x//;
  $unicode = $unicode.parse-base(16);
  my $standard = -1;
  my $iso = -1;
  my $ce = -1;
  my $symbol = -1;
  if $standard-octal {
    $standard = $standard-octal.parse-base(8);
    say "Base mismatch: $standard-octal, $standard-hex" unless $standard == $standard-hex.parse-base(16);
    if @standard[$standard] >= 0 {
      say "Duplicate standard entry {$standard.base(16)} -- {$unicode.base(16)}";
    } else {
      @standard[$standard] = $unicode;
    }
  }
  if $iso-octal {
    $iso = $iso-octal.parse-base(8);
    say "Base mismatch: $iso-octal, $iso-hex" unless $iso == $iso-hex.parse-base(16);
    if @iso[$iso] >= 0 {
      say "Duplicate iso entry {$iso.base(16)} -- {$unicode.base(16)}";
    } else {
      @iso[$iso] = $unicode;
    }
  }
  if $ce-octal {
    $ce = $ce-octal.parse-base(8);
    say "Base mismatch: $ce-octal, $ce-hex" unless $ce == $ce-hex.parse-base(16);
    if @ce[$ce] >= 0 {
      say "Duplicate ce entry {$ce.base(16)} -- {$unicode.base(16)}";
    } else {
      @ce[$ce] = $unicode;
    }
  }
  if $symbol-octal {
    $symbol = $symbol-octal.parse-base(8);
    say "Base mismatch: $symbol-octal, $symbol-hex" unless $symbol == $symbol-hex.parse-base(16);
    if @symbol[$symbol] >= 0 {
      say "Duplicate symbol entry {$symbol.base(16)} -- {$unicode.base(16)}";
    } else {
      @symbol[$symbol] = $unicode;
    }
  }
  # say "{$unicode.base(16)}\t{$iso}\t{$standard}\t{$ce}\t{$unicode-name.uc}";
}

dd @standard;
dd @iso;
dd @ce;
dd @symbol;

say "my @ce = (";
for @ce -> $char {
  if $char < 0 {
    print "    -1, ";
  } else {
    print sprintf "0x%04.4x, ", $char;
  }
}
say "\n);\n";

say "my @standard = (";
for @standard -> $char {
  if $char < 0 {
    print "    -1, ";
  } else {
    print sprintf "0x%04.4x, ", $char;
  }
}
say "\n);\n";

say "my @symbol = (";
for @symbol -> $char {
  if $char < 0 {
    print "    -1, ";
  } else {
    print sprintf "0x%04.4x, ", $char;
  }
}
say "\n);\n";

say "my @iso = (";
for @iso -> $char {
  if $char < 0 {
    print "    -1, ";
  } else {
    print sprintf "0x%04.4x, ", $char;
  }
}
say "\n);\n";
