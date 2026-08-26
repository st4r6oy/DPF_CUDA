filename=dpf
filemodule=filaments
fileconfig=config

o:
	nvfortran -O2 -cuda -gpu=rdc -c ${fileconfig}.cuf
	nvfortran -O2 -cuda -gpu=rdc -c ${filemodule}.cuf
	nvfortran -O2 -cuda -gpu=rdc -o ${filename} ${filename}.cuf ${fileconfig}.o ${filemodule}.o

clean:
	rm -f ${filename} 
	rm *.o


