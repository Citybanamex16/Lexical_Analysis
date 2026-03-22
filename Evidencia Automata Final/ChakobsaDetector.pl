%Starting State.
start_state(qa).




%Transition list
%transition(estadoOrigen, 'caracter', estadorDestino).
transition(qa,'C',qb).
transition(qa,'c',qc).
transition(qb,'h',qd).
transition(qb,'i',qe).
transition(qc,'h',qd).
transition(qc,'i',qe).
transition(qd,'a',qm).
transition(qd,'e',qn).
transition(qd,'o',ql).
transition(qe,'e',qg).
transition(qg,'l',qh).
transition(qh,'a',qi).
transition(qi,'g',qj).
transition(qj,'o',qz).
transition(ql,'u',qo).
transition(qo,'h',qp).
transition(qp,'a',q_q).
transition(q_q,'d',q_r).
transition(q_r,'a',qz).
transition(qn,'r',qt).
transition(qt,'e',qu).
transition(qu,'m',qz).
transition(qm,'u',q_w).
transition(q_w,'m',q_x).
transition(q_x,'a',qy).
transition(q_x,'u',qa1).
transition(qy,'s',qz).
transition(qa1,'r',qb1).
transition(qb1,'k',qc1).
transition(qc1,'y',qz).

%Finish State.
end_state(qz).





%Motor de navegacion. 

chakobsa(P):-
	atom_chars(P,L),
	start_state(S),

	%Ouputs personalizados.
	(navegation(S,L) -> 
	write("¡Bi-la Kaifa! palabra sagrada del Chakobsa")
	;
	write('lengua de espías o simples extranjeros ¡No es Chakobsa!')
	).						
	

%Recursive call.
navegation(State,[H|T]):-
	transition(State,H,Newstate),
	navegation(Newstate,T).

%Base Case: No more letters in list.
navegation(State,[]):-
	end_state(State).












