BUNDLE:=scannervibrato.lv2

FAUSTFLAGS:=-scal -exp10
CFLAGS:=-DURI_PREFIX=\"https://github.com/jkbd\"

$(BUNDLE): $(BUNDLE)/manifest.ttl $(BUNDLE)/scannervibrato.ttl $(BUNDLE)/scannervibrato.so

$(BUNDLE)/%.so: %.cpp
	g++ -shared -fPIC -DPIC $(CFLAGS) $< -o $@

%.cpp: %.dsp effect.lib groups.lib
	faust -i -a lv2.cpp -cn scannervibrato $(FAUSTFLAGS) $< -o $@

.PHONY: clean
validate:
	git submodule init
	git submodule update
	sord_validate `find lv2 -name '*.ttl'` ./scannervibrato.lv2/{manifest.ttl,scannervibrato.ttl}

.PHONY: clean
clean:
	rm -f scannervibrato.cpp
	rm -f $(BUNDLE)/*.so
	rm -f $(BUNDLE)/*.cpp
