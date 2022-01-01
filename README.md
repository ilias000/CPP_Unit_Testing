# C++ Unit Testing  

This is a test project in order to decide and learn how I can create unit tests for C++ projects.  
The tests have to run on every linux based operating system.  
Also in order to develop and maintain the project easily I created a makefile : 

| Command       | Explanation                                                             |  
| ------------- | ----------------------------------------------------------------------  |  
| make          | compiles the Main program with its dependencies and also the Unit Tests |  
| make run      | runs the Main program                                                   |  
| make test     | runs all the Unit tests                                                 |  
| make clean    | removes all the executables and object files                            |  

Last but not least I have created a pipeline on GitHub that runs on every push and pull request.  
The pipeline does the following jobs :  

| Jobs          | Explanation                 |  
| ------------- | ----------------------------|  
| Build         | runs the command make       |  
| Run Tests     | runs the command make test  |  
| Run Main      | runs the command make run   |  
| Clean         | runs the command make clean |
