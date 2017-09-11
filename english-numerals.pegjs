// "num_X"      the number X on its own
// "eX"         ten to the power of X 
// "sub_X"      every number below X
// "range_X_Y"  every number between and including X and Y
// "X_mult_Y"   every multiple of Y contained in X
// "X_sans_Y"   every number contained in X except multiples of Y

expression = sub_e27

sub_e1      = num_9 / num_8 / num_7 / num_6 / num_5 / num_4 / num_3 / num_2 / num_1
range_10_19 = num_19 / num_18 / num_17 / num_16 / num_15 / num_14 / num_13 / num_12 / num_11 / num_10
range_1_19  = range_10_19 / sub_e1

range_20_90_mult_10 = num_20 / num_30 / num_40 / num_50 / num_60 / num_70 / num_80 / num_90
range_21_99_sans_10 = e1:range_20_90_mult_10 "-" rem:sub_e1 { return e1 + rem; }
sub_e2              = range_21_99_sans_10 / range_20_90_mult_10 / range_1_19

sub_e3_mult_e2   = e2:sub_e1 " hundred"      { return e2 * 1e2; }
sub_e3_sans_e2   = e2:sub_e3_mult_e2 " " rem:sub_e2 { return e2 + rem; }
sub_e3           = sub_e3_sans_e2 / sub_e3_mult_e2 / sub_e2

sub_e6_mult_e3   = e3:sub_e3 " thousand"     { return e3 * 1e3; }
sub_e6_sans_e3   = e3:sub_e6_mult_e3 " " rem:sub_e3 { return e3 + rem; }
sub_e6           = sub_e6_sans_e3 / sub_e6_mult_e3 / sub_e3

sub_e9_mult_e6   = e6:sub_e3 " million"      { return e6 * 1e6; }
sub_e9_sans_e6   = e6:sub_e9_mult_e6 " " rem:sub_e6 { return e6 + rem; }
sub_e9           = sub_e9_sans_e6 / sub_e9_mult_e6 / sub_e6

sub_e12_mult_e9  = e9:sub_e3 " billion"      { return e9 * 1e9; }
sub_e12_sans_e9  = e9:sub_e12_mult_e9 " " rem:sub_e9 { return e9 + rem; }
sub_e12          = sub_e12_sans_e9 / sub_e12_mult_e9 / sub_e9

sub_e15_mult_e12 = e12:sub_e3 " trillion"    { return e12 * 1e12; }
sub_e15_sans_e12 = e12:sub_e15_mult_e12 " " rem:sub_e12 { return e12 + rem; }
sub_e15          = sub_e15_sans_e12 / sub_e15_mult_e12 / sub_e12

sub_e18_mult_e15 = e15:sub_e3 " quadrillion" { return e15 * 1e15; }
sub_e18_sans_e15 = e15:sub_e18_mult_e15 " " rem:sub_e15 { return e15 + rem; }
sub_e18          = sub_e18_sans_e15 / sub_e18_mult_e15 / sub_e15

sub_e21_mult_e18 = e18:sub_e3 " quintillion" { return e18 * 1e18; }
sub_e21_sans_e18 = e18:sub_e21_mult_e18 " " rem:sub_e18 { return e18 + rem; }
sub_e21          = sub_e21_sans_e18 / sub_e21_mult_e18 / sub_e18

sub_e24_mult_e21 = e21:sub_e3 " sextillion"  { return e21 * 1e21; }
sub_e24_sans_e21 = e21:sub_e24_mult_e21 " " rem:sub_e21 { return e21 + rem; }
sub_e24          = sub_e24_sans_e21 / sub_e24_mult_e21 / sub_e21

sub_e27_mult_e24 = e24:sub_e3 " septillion"  { return e24 * 1e24; }
sub_e27_sans_e24 = e24:sub_e27_mult_e24 " " rem:sub_e24 { return e24 + rem; }
sub_e27          = sub_e27_sans_e24 / sub_e27_mult_e24 / sub_e24

num_1 = "one"   { return 1; }
num_2 = "two"   { return 2; }
num_3 = "three" { return 3; }
num_4 = "four"  { return 4; }
num_5 = "five"  { return 5; }
num_6 = "six"   { return 6; }
num_7 = "seven" { return 7; }
num_8 = "eight" { return 8; }
num_9 = "nine"  { return 9; }

num_10 = "ten"       { return 10; }
num_11 = "eleven"    { return 11; }
num_12 = "twelve"    { return 12; }
num_13 = "thirteen"  { return 13; }
num_14 = "fourteen"  { return 14; }
num_15 = "fifteen"   { return 15; }
num_16 = "sixteen"   { return 16; }
num_17 = "seventeen" { return 17; }
num_18 = "eighteen"  { return 18; }
num_19 = "nineteen"  { return 19; }

num_20 = "twenty"  { return 20; }
num_30 = "thirty"  { return 30; }
num_40 = "forty"   { return 40; }
num_50 = "fifty"   { return 50; }
num_60 = "sixty"   { return 60; }
num_70 = "seventy" { return 70; }
num_80 = "eighty"  { return 80; }
num_90 = "ninety"  { return 90; }
