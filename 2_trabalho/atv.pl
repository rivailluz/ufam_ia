% Your model here

0.1 :: flw .
0.7::str(dry); 0.2::str(wet); 0.1::str(snow_covered).

0.5::r :-   flw, str(dry).
0.8::r :-   flw, str(wet).
0.95::r :-   flw, str(snow_covered).
0.05::r :- \+flw, str(dry).
0.2::r :- \+flw, str(wet).
0.5::r :- \+flw, str(snow_covered).

0.2::v :- r.
0.99::v :- \+r.

0.95 :: b .
0.95 :: k .

0.99::li :- v, b, k.
0.01::li :- v, b, \+k.
0.01::li :- v, \+b, k.
0.001::li :- v, \+b, \+k.
0.3::li :- \+v, b, k.
0.005::li :- \+v, b, \+k.
0.005::li :- \+v, \+b, k.
%0.99::li :- \+v, \+b, \+k.

evidence(str(snow_covered),true).

query(v).