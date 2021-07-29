# How to create a Fly project

After installing Fly, it is necessary to follow some steps in order to create a project in __Eclipse IDE for DSL__:

* Open a new Eclipse runtime. Right click on ___org.xtext.FLY___ __->__ Run as... __->__ Eclipse application;
* Create a new project in the Fly runtime. New project __->__ Maven project __->__ select it.isisLab archetype __->__ set a name for the project __->__ Finish;
* Convert the project in a Fly project. Right click on src/main/fly __->__ New file __->__ set a filename with a __.fly__ extension __->__ Finish. After creating a __.fly__ file, Eclipse will prompt about the project conversion. Select yes.

Once the Fly project is created, it is the moment to write your Fly program. A Fly project is divided in two main folders:

* ***src/main/fly*** for .fly files;
* ***src-gen*** where the __Fly generator__ will compile Fly code in Java code and scripts for deploy and undeploy.

## Tips for new developers
When you write a Fly program, it's recommended to follow some rules of thumb in order to avoid the majority of errors:

1. Initialize your variables berfore using them for complex assignments. This will avoid some type parsing errors. Here is an example:

```
var x = 10
var y = x //Wrong. Fly generator will recognize y variable as variable Object.

var x = 10

var y = 0
y = x    //Right. Fly generator will recognize y variable as Integer.
```

2. If you have to use data structures in a function, prefer using ___const___ instead of passing parameters. This allows to avoid other type parsing errors. Here are some examples:

```
var x = [[0, 1, 2], [3, 4, 5]] //Matrix declaration

func myFunction(x){            //x will be recognized as Integer
  ... some code ...
}


const y = [[0, 1, 2], [3, 4, 5]]

func myFunction2(){            //This won't produce errors 
  var z = y[0][0]
  
  ... some code ...
}
```
