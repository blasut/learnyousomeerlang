-module(recursive).
-compile(export_all).

fac(0) -> 1;
fac(N) when N > 0  -> N*fac(N-1).

tail_fac(N) -> tail_fac(N,1).

tail_fac(0,Acc) ->
    Acc;
tail_fac(N,Acc) when N > 0 ->
    tail_fac(N-1,N*Acc).


len([]) -> 0;
len([_|T]) -> 1 + len(T).

tail_len(L) ->
    tail_len(L,0).

tail_len([], Acc) ->
    Acc;
tail_len([_|T], Acc) ->
    tail_len(T,Acc+1).

tail_duplicate(N,Term) ->
    tail_duplicate(N,Term,[]).

tail_duplicate(0,_,List) ->
    List;
tail_duplicate(N,Term,List) when N > 0 ->
    tail_duplicate(N-1, Term, [Term|List]).

reverse([]) -> [];
reverse([H|T]) -> reverse(T)++[H].

tail_reverse(L) -> tail_reverse(L,[]).

tail_reverse([],Acc) -> Acc;
tail_reverse([H|T],Acc) -> tail_reverse(T, [H|Acc]).

zip([],[]) -> [];
zip([X|Xs],[Y|Ys]) ->
    [{X,Y}|zip(Xs,Ys)].

tail_zip(X,Y) -> reverse(tail_zip(X,Y,[])).

tail_zip([],[],Acc) -> Acc;
tail_zip([X|Xs],[Y|Ys], Acc) ->
    tail_zip(Xs,Ys, [{X,Y}|Acc]).

%% blabla quicksort


