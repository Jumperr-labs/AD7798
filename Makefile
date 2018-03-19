$(shell mkdir -p modeling-framework/AD7798/_build)

modeling-framework/AD7798/_build/AD7798.o: modeling-framework/AD7798/src/AD7798.cpp
	$(CC) -fPIC -c -o $@ $^ $(CFLAGS) -I./modeling-framework/AD7798/include -I./modeling-framework/include

modeling-framework/AD7798/_build/AD7798.so: modeling-framework/AD7798/_build/AD7798.o obj/src/core/ModelingFramework.o
	$(CC) -shared -o $@ $^

AD7798: modeling-framework/AD7798/_build/AD7798.so