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



%Banco de Pruebas.
% Formato -> % test_dato(Palabra, ResultadoEsperado).
test_dato('chaumas', true). 
test_dato('chaumurky', true). 
test_dato('cherem', true). 
test_dato('chouhada', true). 
test_dato('cielago', true). 
test_dato('charam', false). 
test_dato('chaumass', false). 
test_dato('chherem', false). 
test_dato('cielego', false). 
test_dato('cheuhede', false). 
test_dato('', false). 
test_dato('CCCC', false). 
test_dato('Chaumas', true). 
test_dato('Chaumurky', true). 
test_dato('Cherem', true). 
test_dato('Chouhada', true). 
test_dato('Cielago', true). 


% --- EJECUCIÓN de Pruebas.---
run_test :-
    format('~n=== INICIANDO PRUEBAS DEL SISTEMA CHAKOBSA ===~n~n'),
    forall(test_dato(Palabra, Esperado), (
        (test_silencioso(Palabra) -> Resultado = true ; Resultado = false),
        
        (Resultado == Esperado -> Status = 'PASÓ' ; Status = 'FALLÓ'),
        
        format('Palabra: ~w | Esperado: ~w | Obtuvimos: ~w | [~w]~n', 
               [Palabra, Esperado, Resultado, Status])
    )),
    format('~n=== FIN DE LAS PRUEBAS ===~n').

% Predicado auxiliar que solo navega (sin imprimir mensajes estéticos)
test_silencioso(P) :-
   atom_chars(P,L),
	start_state(S),
    navegation(S, L).















