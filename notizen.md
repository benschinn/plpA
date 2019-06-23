Whenever you learn a new construct in a programming language, you should ask these three questions:  
* What is the syntax?  
* What are the type-checking rules?  
* What are the evaluationrules?

# _The semantics_

* Syntax is just how to write something
* Semantics is what that something means
- **Type-checking** (before program runs)
- **Evaluations** (as program runs)

For example syntax for variable binding looks like this:
```
val x = 3;
```
The semantics of variable bindings include:
* **Type-check** expression and extend **static environment**
* **Evaluate** expression and extend **dynamic environment**
