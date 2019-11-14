Obj_files=guessthenumber.o main.o
cc=gcc_S
Link_Target=app.exe
clean_Target=$(Link_Target) $(Obj_files)


all:$(Link_Target)

app.exe:$(Obj_files)
	$(cc) $^ -o $@
	
clean:
	rm $(clean_Target)
	
%.o:%.c
	$(cc) -c $< -o $@
