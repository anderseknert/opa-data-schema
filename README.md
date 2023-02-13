# opa-data-schema

Without schema:
```shell
$ opa eval -f pretty -d policy data.policy.bar
{}
```

With schema:
```shell
$ opa eval -f pretty --schema schema -d policy data.policy.bar
1 error occurred: policy/policy.bar.rego:4: rego_type_error: undefined ref: data.policy.foo.decision.bar
	data.policy.foo.decision.bar
	                         ^
	                         have: "bar"
	                         want (one of): ["reason"]
```
