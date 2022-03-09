amit@Azure:~/terraform-az-acc-2022-March-07/14-Terraform-Console$ terraform console 
> 2 + 4
6
> 10 - 1
9
> 5 * 3
15
> 30 / 5 
6
> contain(list("orange", "mango", "apple"), "kiwi") 
╷
│ Error: Call to unknown function
│ 
│   on <console-input> line 1:
│   (source code not available)
│ 
│ There is no function named "contain". Did you mean "contains"?
╵


> contains(list("orange", "mango", "apple"), "kiwi") 
╷
│ Error: Error in function call
│ 
│   on <console-input> line 1:
│   (source code not available)
│ 
│ Call to function "list" failed: the "list" function was deprecated in Terraform v0.12 and is no longer available; use tolist([ ...
│ ]) syntax to write a literal list.
╵


> contains(tolist("orange", "mango", "apple"), "kiwi") 
╷
│ Error: Too many function arguments
│ 
│   on <console-input> line 1:
│   (source code not available)
│ 
│ Function "tolist" expects only 1 argument(s).
╵


> contains(tolist(["orange", "mango", "apple"]), "kiwi") 
false
> contains(tolist(["orange", "mango", "apple"]), "apple") 
true
> 

> 

> length("a,b,c")
5
> length(split(",", "a,b,c"))
3
> 

> 

> length(map({"key"="val"}))
╷
│ Error: Error in function call
│ 
│   on <console-input> line 1:
│   (source code not available)
│ 
│ Call to function "map" failed: the "map" function was deprecated in Terraform v0.12 and is no longer available; use tomap({ ... })
│ syntax to write a literal map.
╵


> length(tomap({"key"="val"}))
1
> length(tomap({"key"="val"}), tomap({"test"="abc"}))
╷
│ Error: Too many function arguments
│ 
│   on <console-input> line 1:
│   (source code not available)
│ 
│ Function "length" expects only 1 argument(s).
╵


> merge(tomap({"key"="val"}), tomap({"test"="abc"}))
tomap({
  "key" = "val"
  "test" = "abc"
})
> element(["a", "b", "c"], 1)
"b"
> element(["a", "b", "c"], 2)
"c"
> element(["a", "b", "c"], 0)
"a"
> lookup({a="ay", b="bee"}, "a", "what?")
"ay"
> lookup({a="ay", b="bee"}, "b", "what?")
"bee"
> lookup({a="ay", b="bee"}, "z", "what?")
"what?"
> exit 
