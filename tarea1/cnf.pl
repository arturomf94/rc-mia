:- op(4, xfy, imp).
:- op(3, xfy, or).
:- op(2, xfy, and).
:- op(1, fy,  neg).

fimp(X,FBF) :- X = A imp B,
    fimp(A, C), fimp(B, D),
    FBF = (neg (C) or D), !.

fimp(X,FBF) :- X = A or B,
    fimp(A, C), fimp(B, D),
    FBF = (C or D), !.

fimp(X,FBF) :- X = A and B,
    fimp(A, C), fimp(B, D),
    FBF = (C and D), !.

fimp(X,FBF):- FBF = X.

nnf(X,NNF):- X = A and B,
    nnf(A, C), nnf(B, D),
    NNF = (C and D), !.

nnf(X,NNF):- X = A or B,
    nnf(A, C), nnf(B, D),
    NNF = (C or D), !.

nnf(neg (A and B),NNF):- nnf(neg A, C),
    nnf(neg B, D), NNF = (C or D), !.

nnf(neg (A or B),NNF):- nnf(neg A, C),
    nnf(neg B, D), NNF = (C and D), !.

nnf(neg (neg X),NNF):- NNF = X,!.

nnf(X,NNF):- NNF = X.

distr(X,Y,DISTR):- X=P and Q,
    distr(P,Y,DISTR2), distr(Q,Y, DISTR3),
    DISTR = DISTR2 and DISTR3, !.

distr(X,Y,DISTR):- Y=P and Q,
    distr(X,P,DISTR2),
    distr(X,Q,DISTR3),
    DISTR = DISTR2 and DISTR3, !.

distr(X,Y,DISTR):- DISTR = X or Y.

cnf_aux(Z,CNF):- Z = X and Y,
    cnf_aux(X,P), cnf_aux(Y,Q),
    CNF = P and Q, !.

cnf_aux(Z,CNF):- Z= X or Y,
    cnf_aux(X,P), cnf_aux(Y,Q),
    distr(P,Q,CNFAUX), CNF=CNFAUX, !.

cnf_aux(Z,CNF):- Z=CNF.

cnf(Z, CNF):- fimp(Z,Q),
    nnf(Q, R), cnf_aux(R, CNF), !.
