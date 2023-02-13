package policy.foo

decision := obj {
    input.foo == "bar"

    # make sure object is dynamic, so that the compiler
    # can't discern the output type by itself
    obj := json.unmarshal(`{"reason": "why not?"}`)
}
