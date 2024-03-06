name :=

.PHONY= test main src header all clean

ifeq ($(name),)
    $(error No arguments inserted)
endif

uname=$$(echo $(name) | tr '[:lower:]' '[:upper:]')

test:
	@echo "#include <stdio.h>\n\nint main(void)\n{\n\n\treturn 0;\n}" > ./$(name)_test.c

main:
	@echo "#include <stdio.h>\n\nint main(void)\n{\n\n\treturn 0;\n}" > ./$(name).c

src: 
	@echo "#include \"$(name).h\"\n" > ./$(name).c

header:
	@echo "#ifndef __$(uname)_H_\n#define __$(uname)_H_\n\n\n#endif" > ./$(name).h

all: src test header

clean:
	rm $(name).c $(name).h $(name)_test.c