test: directFD
	ocamlfind ocamlopt -linkpkg -package unix -o test test.ml directFD.o
	./test 1>1.t 2>2.t 3>3.t 4>4.t
directFD: directFD.mli directFD.c
	ocamlc -c directFD.mli
	ocamlc -c directFD.c
reset: .ALWAYS
	rm -f *.o *.cmi *.cmo *.cmx *.t test
.ALWAYS:
