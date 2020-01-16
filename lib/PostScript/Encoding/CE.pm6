unit package PostScript::Encoding::CE;

# Postscript <-> Unicode CE (Central European) encoding

my @ce = (
     -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1,
     -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1,
     -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1,
     -1,     -1,     -1,     -1,     -1,     -1,     -1,     -1,
 0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x0025, 0x0026, 0x0027,
 0x0028, 0x0029, 0x002a, 0x002b, 0x002c,     -1, 0x002e, 0x002f,
 0x0030, 0x0031, 0x0032, 0x0033, 0x0034, 0x0035,     -1, 0x0037,
 0x0038, 0x0039, 0x003a, 0x003b, 0x003c, 0x003d, 0x003e, 0x003f,
 0x0040, 0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047,
 0x0048, 0x0049, 0x004a, 0x004b, 0x004c, 0x004d, 0x004e, 0x004f,
 0x0050, 0x0051, 0x0052, 0x0053, 0x0054, 0x0055, 0x0056, 0x0057,
 0x0058, 0x0059, 0x005a, 0x005b, 0x005c, 0x005d, 0x005e, 0x005f,
 0x0060, 0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067,
 0x0068, 0x0069, 0x006a, 0x006b, 0x006c, 0x006d, 0x006e, 0x006f,
 0x0070, 0x0071, 0x0072, 0x0073, 0x0074, 0x0075, 0x0076, 0x0077,
 0x0078, 0x0079, 0x007a, 0x007b, 0x007c, 0x007d, 0x007e,     -1,
     -1,     -1, 0x201a,     -1, 0x201e, 0x2026, 0x2020, 0x2021,
     -1, 0x2030, 0x0160, 0x2039, 0x015a, 0x0164, 0x017d, 0x0179,
     -1, 0x2018, 0x2019, 0x201c, 0x201d, 0x2022, 0x2013, 0x2014,
     -1, 0x2122, 0x0161, 0x203a, 0x015b, 0x0165, 0x017e, 0x017a,
     -1, 0x02c7, 0x02d8, 0x0141, 0x00a4, 0x0104, 0x00a6, 0x00a7,
 0x00a8, 0x00a9, 0x015e, 0x00ab, 0x00ac, 0x00ad, 0x00ae, 0x017b,
 0x00b0, 0x00b1, 0x02db, 0x0142, 0x00b4, 0x00b5, 0x00b6, 0x00b7,
     -1, 0x0105, 0x015f, 0x00bb, 0x013d, 0x02dd, 0x013e, 0x017c,
 0x0154, 0x00c1, 0x00c2, 0x0102, 0x00c4, 0x0139, 0x0106, 0x00c7,
 0x010c, 0x00c9, 0x0118, 0x00cb, 0x011e, 0x00cd, 0x00ce, 0x010e,
 0x0111, 0x0143, 0x0147, 0x00d3, 0x00d4, 0x0150, 0x00d6, 0x00d7,
 0x0158, 0x016e, 0x00da, 0x0170, 0x00dc, 0x00dd, 0x0162, 0x00df,
 0x0155, 0x0000, 0x0000, 0x0103, 0x0000, 0x013a, 0x0107, 0x0000,
 0x010d, 0x0000, 0x0119, 0x00eb, 0x011f, 0x00ed, 0x00ee, 0x010f,
 0x0112, 0x0144, 0x0148, 0x00f3, 0x00f4, 0x0151, 0x00f6, 0x00f7,
 0x0159, 0x016f, 0x00fa, 0x0171, 0x00fc, 0x00fd, 0x0163, 0x02d9, 
);

# %encoding maps those Unicode code points which have corresponding
# entries in the PostScript Standard Encoding to that encoding.

our %encoding = @decoding.kv.map({$^b => $^a});

# Also map the following Unicode code points which have similar glyphs.
# Note that they will not round-trip.

# None at present