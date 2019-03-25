:- op(4, xfy, imp).
:- op(3, xfy, or).
:- op(2, xfy, and).
:- op(1, fy,  neg).

free_impl(X,FBF) :- X = A or B,
    free_impl(A, C), free_impl(B, D),
    FBF = (C or D), !.

free_impl(X,FBF) :- X = A and B,
    free_impl(A, C), free_impl(B, D),
    FBF = (C and D), !.

free_impl(X,FBF) :- X = A imp B,
    free_impl(A, C), free_impl(B, D),
    FBF = (neg (C) or D), !.

free_impl(X,FBF):- FBF = X.

nnf(neg (A and B),NNF):- nnf(neg A, C),
    nnf(neg B, D), NNF = (C or D), !.

nnf(neg (A or B),NNF):- nnf(neg A, C),
    nnf(neg B, D), NNF = (C and D), !.

nnf(X,NNF):- X = A and B,
    nnf(A, C), nnf(B, D),
    NNF = (C and D), !.

nnf(X,NNF):- X = A or B,
    nnf(A, C), nnf(B, D),
    NNF = (C or D), !.

nnf(neg (neg X),NNF):- NNF = X,!.

nnf(X,NNF):- NNF = X.

distrib(X,Y,DISTRIB):- X=P and Q,
    distrib(P,Y,DISTRIB2), distrib(Q,Y, DISTRIB3),
    DISTRIB = DISTRIB2 and DISTRIB3, !.

distrib(X,Y,DISTRIB):- Y=P and Q,
    distrib(X,P,DISTRIB2),
    distrib(X,Q,DISTRIB3),
    DISTRIB = DISTRIB2 and DISTRIB3, !.

distrib(X,Y,DISTRIB):- DISTRIB = X or Y.

cnf_aux(Z,CNF):- Z = X and Y,
    cnf_aux(X,P), cnf_aux(Y,Q),
    CNF = P and Q, !.

cnf_aux(Z,CNF):- Z= X or Y,
    cnf_aux(X,P), cnf_aux(Y,Q),
    distrib(P,Q,CNFAUX), CNF=CNFAUX, !.

cnf_aux(Z,CNF):- Z=CNF.

cnf(Z, CNF):- free_impl(Z,Q),
    nnf(Q, R), cnf_aux(R, CNF), !.
