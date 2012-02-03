
REBAR=./rebar

.PHONY: deps rel

compile:deps
	$(REBAR) compile

rel: compile
	$(REBAR) generate

deps:
	$(REBAR) get-deps

clean:
	$(REBAR) clean
#	$(REBAR) delete-deps

