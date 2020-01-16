unit package PostScript::Encoding::Standard;

# Postscript <-> Unicode standard mappings as per ftp://ftp.unicode.org/Public/MAPPINGS/VENDORS/ADOBE/stdenc.txt

# @decoding translates PostScript bytes to the closest Unicode code point

our @decoding = (
      -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1, # 00
      -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1, # 08
      -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1, # 10
      -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1, # 18
  0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x0025, 0x0026, 0x2019, # 20
  0x0028, 0x0029, 0x002a, 0x002b, 0x002c, 0x002d, 0x002e, 0x002f, # 28
  0x0030, 0x0031, 0x0032, 0x0033, 0x0034, 0x0035, 0x0036, 0x0037, # 30
  0x0038, 0x0039, 0x003a, 0x003b, 0x003c, 0x003d, 0x003e, 0x003f, # 38
  0x0040, 0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047, # 40
  0x0048, 0x0049, 0x004a, 0x004b, 0x004c, 0x004d, 0x004e, 0x004f, # 48
  0x0050, 0x0051, 0x0052, 0x0053, 0x0054, 0x0055, 0x0056, 0x0057, # 50
  0x0058, 0x0059, 0x005a, 0x005b, 0x005c, 0x005d, 0x005e, 0x005f, # 58
  0x2018, 0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067, # 60
  0x0068, 0x0069, 0x006a, 0x006b, 0x006c, 0x006d, 0x006e, 0x006f, # 68
  0x0070, 0x0071, 0x0072, 0x0073, 0x0074, 0x0075, 0x0076, 0x0077, # 70
  0x0078, 0x0079, 0x007a, 0x007b, 0x007c, 0x007d, 0x007e,     -1, # 78
      -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1, # 80
      -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1, # 88
      -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1, # 90
      -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1, # 98
      -1, 0x00a1, 0x00a2, 0x00a3, 0x2044, 0x00a5, 0x0192, 0x00a7, # a0
  0x00a4, 0x0027, 0x201c, 0x00ab, 0x2039, 0x203a, 0xfb01, 0xfb02, # a8
      -1, 0x2013, 0x2020, 0x2021, 0x00b7,     -1, 0x00b6, 0x2022, # b0
  0x201a, 0x201e, 0x201d, 0x00bb, 0x2026, 0x2030,     -1, 0x00bf, # b8
      -1, 0x0060, 0x00b4, 0x02c6, 0x02dc, 0x00af, 0x02d8, 0x02d9, # c0
  0x00a8,     -1, 0x02da, 0x00b8,     -1, 0x02dd, 0x02db, 0x02c7, # c8
  0x2014,     -1,     -1,     -1,     -1,     -1,     -1,     -1, # d0
      -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1, # d8
      -1, 0x00c6,     -1, 0x00aa,     -1,     -1,     -1,     -1, # e0
  0x0141, 0x00d8, 0x0152, 0x00ba,     -1,     -1,     -1,     -1, # e8
      -1, 0x00e6,     -1,     -1,     -1, 0x0131,     -1,     -1, # f0
  0x0142, 0x00f8, 0x0153, 0x00df,     -1,     -1,     -1,     -1, # f8
);

# %encoding maps those Unicode code points which have corresponding
# entries in the PostScript Standard Encoding to that encoding.

our %encoding = @decoding.kv.map({$^b => $^a});

# Also map the following Unicode code points which have similar glyphs.
# Note that they will not round-trip.

%encoding{0x00a0} = 0x20;
%encoding{0x00ad} = 0x2d;
%encoding{0x2215} = 0xa4;
%encoding{0x2219} = 0xb4;
%encoding{0x02c9} = 0xc5;
