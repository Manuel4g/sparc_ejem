#manuel gamboa -20192005093

suma_vect: !w=u+v
%i0 !# de elementos del vector
%i1 ! direccion mem u
%i2 ! direccion men del vector v
%i3 ! direccion mem del resultado w

escala_vect: !w=ku
%i0 !# de elementos del vector
%i1 ! direccion mem del vector u
%i2 ! ecalar k
%i3 ! direccion mem del vector w

vector_sobre_escalar !w=u/k
%i0 !# de elementos 
%i1 !# de elementos u
%i2 ! ecalar k
%i3 ! direccion mem de w

acumula_pasos:
%i0 ! # de elementos de los vectores
%i1 ! dir mem por_i
%i2 ! dir mem v_i
%i3 ! escalar kv
%i4 ! escalar paso
%i5 ! escalar t
%O0 ! # de elementos del vector
%O1 ! # de vectores retomado
%O2 ! # dir de mem lista
%l0 !indice de numero de pasos

sub %g0, %i3, %l3 !-kv
mov %i1, %l1 !pos
mov %l2,%l2 !vec
mov %i4,%l0 !l0 indice paso
ciclo:
    subcc %l0,1,%l0
    be fin
    mov %l2,%i1
    mov %l3,%i2
    set  %l4 ,%i3 !%l4 fuerza
    call escala_vector
    nop
    ba ciclo               ! Repetir el bucle
    nop
fin:
    retl                  ! Retornar
    nop
