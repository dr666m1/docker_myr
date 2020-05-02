# concept
R image for data science.

# usage
add the command below to your .bashrc.
```
alias R="docker run -it -p 4321:8888 -v $(pwd):/sync -v $HOME/.renv:/root/.local/share/renv --rm dr666m1/myr"
```
