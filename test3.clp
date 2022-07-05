P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2) :-
  pc1 = 3, pc2 = 9, r1 = 0, r2 = 0,
  x1 = x2, y1 = 0, y2 = 0,
  z1 = 2 * x1, z2 = x2.
P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2) :-
  pc1 = 3, pc2 = 9, r1 = 0, r2 = 0,
  x1 = x2, y1 = 0, y2 = 0,
  z1 = 2 * x1, z2 = x2.
P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2'', x2'', y2'', z2'', r2'') :-
  P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  G2(pc2', x2', y2', z2', r2', pc2'', x2'', y2'', z2'', r2'').
P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1'', x1'', y1'', z1'', r1'', pc2', x2', y2', z2', r2') :-
  P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  G1(pc1', x1', y1', z1', r1', pc1'', x1'', y1'', z1'', r1'').
Q1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1', x1', y1', z1', r1', pc2'', x2'', y2'', z2'', r2'') :-
  Q1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  G2(pc2', x2', y2', z2', r2', pc2'', x2'', y2'', z2'', r2'').
Q2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1'', x1'', y1'', z1'', r1'', pc2', x2', y2', z2', r2') :-
  Q2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  G1(pc1', x1', y1', z1', r1', pc1'', x1'', y1'', z1'', r1'').
P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1'', x1'', y1'', z1'', r1'', pc2', x2', y2', z2', r2') :-
  P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc1' = 16 and z1' <= 0 and pc1'' = 17 and r1'' = r1' and x1'' = x1' and y1'' = y1' and z1'' = z1' or pc1' = 16 and z1' > 0 and pc1'' = 19 and r1'' = r1' and x1'' = x1' and y1'' = y1' and z1'' = z1'.
G1(pc1', x1', y1', z1', r1', pc1'', x1'', y1'', z1'', r1'') :-
  P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r1'),
  Sch1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc1' = 16 and z1' <= 0 and pc1'' = 17 and r1'' = r1' and x1'' = x1' and y1'' = y1' and z1'' = z1' or pc1' = 16 and z1' > 0 and pc1'' = 19 and r1'' = r1' and x1'' = x1' and y1'' = y1' and z1'' = z1'.
P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2'', x2'', y2'', z2'', r2'') :-
  P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc2' = 16 and z2' <= 0 and pc2'' = 17 and r2'' = r2' and x2'' = x2' and y2'' = y2' and z2'' = z2' or pc2' = 16 and z2' > 0 and pc2'' = 19 and r2'' = r2' and x2'' = x2' and y2'' = y2' and z2'' = z2' or pc2' = 10 and pc2'' = 11 and r2'' = r2' and x2'' = x2' and y2'' = 2 * y2' and z2'' = z2'.
G2(pc2', x2', y2', z2', r2', pc2'', x2'', y2'', z2'', r2'') :-
  P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc2' = 16 and z2' <= 0 and pc2'' = 17 and r2'' = r2' and x2'' = x2' and y2'' = y2' and z2'' = z2' or pc2' = 16 and z2' > 0 and pc2'' = 19 and r2'' = r2' and x2'' = x2' and y2'' = y2' and z2'' = z2' or pc2' = 10 and pc2'' = 11 and r2'' = r2' and x2'' = x2' and y2'' = 2 * y2' and z2'' = z2'.
Q1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1'', x1'', y1'', z1'', r1'', pc2', x2', y2', z2', r2') :-
  P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc1' = 3 and pc1'' = 16 and r1'' = y1' and x1'' = x1' and y1'' = y1' and z1'' = z1' and f = 1 or pc1' = 19 and pc1'' = 16 and r1'' = r1' + x1' and x1'' = x1' and y1'' = y1' + x1' and z1'' = z1' - 1 and f = 1.
G1(pc1', x1', y1', z1', r1', pc1'', x1'', y1'', z1'', r1'') :-
  P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc1' = 3 and pc1'' = 16 and r1'' = y1' and x1'' = x1' and y1'' = y1' and z1'' = z1' and f = 1 or pc1' = 19 and pc1'' = 16 and r1'' = r1' + x1' and x1'' = x1' and y1'' = y1' + x1' and z1'' = z1' - 1 and f = 1.
P1(pc1'', x1'', y1'', z1'', r1'', pc2', x2', y2', z2', r2', pc1'', x1'', y1'', z1'', r1'', pc2', x2', y2', z2', r2') :-
  P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc1' = 3 and pc1'' = 16 and r1'' = y1' and x1'' = x1' and y1'' = y1' and z1'' = z1' and f = 1 or pc1' = 19 and pc1'' = 16 and r1'' = r1' + x1' and x1'' = x1' and y1'' = y1' + x1' and z1'' = z1' - 1 and f = 1.
Q2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1', x1', y1', z1', r1', pc2'', x2'', y2'', z2'', r2'') :-
  P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc2' = 9 and pc2'' = 16 and r2'' = y2' and x2'' = x2' and y2'' = y2' and z2'' = z2' and f = 2 or pc2' = 19 and pc2'' = 16 and r2'' = r2' + x2' and x2'' = x2' and y2'' = y2' + x2' and z2'' = z2' - 1 and f = 2.
G2(pc2', x2', y2', z2', r2', pc2'', x2'', y2'', z2'', r2'') :-
  P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc2' = 9 and pc2'' = 16 and r2'' = y2' and x2'' = x2' and y2'' = y2' and z2'' = z2' and f = 2 or pc2' = 19 and pc2'' = 16 and r2'' = r2' + x2' and x2'' = x2' and y2'' = y2' + x2' and z2'' = z2' - 1 and f = 2.
P2(pc1', x1', y1', z1', r1', pc2'', x2'', y2'', z2'', r2'', pc1', x1', y1', z1', r1', pc2'', x2'', y2'', z2'', r2'') :-
  P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc2' = 9 and pc2'' = 16 and r2'' = y2' and x2'' = x2' and y2'' = y2' and z2'' = z2' and f = 2 or pc2' = 19 and pc2'' = 16 and r2'' = r2' + x2' and x2'' = x2' and y2'' = y2' + x2' and z2'' = z2' - 1 and f = 2.
Q1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1'', x1'', y1'', z1'', r1'', pc2'', x2'', y2'', z2'', r2'') :-
  P1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2', pc1'', x1'', y1'', z1'', r1'', pc2'', x2'', y2'', z2'', r2''),
  Q1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2').
Q2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1'', x1'', y1'', z1'', r1'', pc2'', x2'', y2'', z2'', r2'') :-
  P2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2', pc1'', x1'', y1'', z1'', r1'', pc2'', x2'', y2'', z2'', r2''),
  Q2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2').
P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1'', x1'', y1'', z1'', r1'', pc2', x2', y2', z2', r2') :-
  Q1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc1' = 17 and pc1'' = 4 and y1'' = r1' and x1'' = x1' and z1'' = z1' and r1'' = r1' and f = 1 or pc1' = 17 and pc1'' = 20 and y1'' = y1' and x1'' = x1' and z1'' = z1' and r1'' = r1' and f = 1 or pc1' = 20 and pc1'' = 4 and y1'' = r1' and x1'' = x1' and z1'' = z1' and r1'' = r1' and f = 1 or pc1' = 20 and pc1'' = 20 and y1'' = y1' and x1'' = x1' and z1'' = z1' and r1'' = r1' and f = 1.
G1(pc1', x1', y1', z1', r1', pc1'', x1'', y1'', z1'', r1'') :-
  Q1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc1' = 17 and pc1'' = 4 and y1'' = r1' and x1'' = x1' and z1'' = z1' and r1'' = r1' and f = 1 or pc1' = 17 and pc1'' = 20 and y1'' = y1' and x1'' = x1' and z1'' = z1' and r1'' = r1' and f = 1 or pc1' = 20 and pc1'' = 4 and y1'' = r1' and x1'' = x1' and z1'' = z1' and r1'' = r1' and f = 1 or pc1' = 20 and pc1'' = 20 and y1'' = y1' and x1'' = x1' and z1'' = z1' and r1'' = r1' and f = 1.
P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2'', x2'', y2'', z2'', r2'') :-
  Q2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc2' = 17 and pc2'' = 10 and y2'' = r2' and x2'' = x2' and z2'' = z2' and r2'' = r2' and f = 2 or pc2' = 17 and pc2'' = 20 and y2'' = y2' and x2'' = x2' and z2'' = z2' and r2'' = r2' and f = 2 or pc2' = 20 and pc2'' = 10 and y2'' = r2' and x2'' = x2' and z2'' = z2' and r2'' = r2' and f = 2 or pc2' = 20 and pc2'' = 20 and y2'' = y2' and x2'' = x2' and z2'' = z2' and r2'' = r2' and f = 2.
G2(pc2', x2', y2', z2', r2', pc2'', x2'', y2'', z2'', r2'') :-
  Q2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, f, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc2' = 17 and pc2'' = 10 and y2'' = r2' and x2'' = x2' and z2'' = z2' and r2'' = r2' and f = 2 or pc2' = 17 and pc2'' = 20 and y2'' = y2' and x2'' = x2' and z2'' = z2' and r2'' = r2' and f = 2 or pc2' = 20 and pc2'' = 10 and y2'' = r2' and x2'' = x2' and z2'' = z2' and r2'' = r2' and f = 2 or pc2' = 20 and pc2'' = 20 and y2'' = y2' and x2'' = x2' and z2'' = z2' and r2'' = r2' and f = 2.
y1' = y2' :-
  P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc1' = 4, pc2' = 11.
pc1' <> 4 :-
  P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc2' <> 11.
pc2' <> 11 :-
  P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc1' <> 4.
Sch1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'), Sch2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2') :-
  P1(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc2' <> 11 or pc1' <> 4.
pc1' <> 4 :-
  P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc2' <> 11.
pc2' <> 11 :-
  P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  Sch2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc1' <> 4.
Sch1(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'), Sch2(pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2') :-
  P2(pc1, x1, y1, z1, r1, pc2, x2, y2, z2, r2, pc1', x1', y1', z1', r1', pc2', x2', y2', z2', r2'),
  pc2' <> 11 or pc1' <> 4.
  