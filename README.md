# concept
R image for data science. **renv** is preinstalled.

# usage
add the command below to your `.bashrc`.
```
alias R="docker run -it -v $(pwd):/sync -v $HOME/.renv:/root/.local/share/renv --rm dr666m1/myr"
```
if you use fish, save the code below as `$HOME/.config/fish/functions/R.fish`
```
function R
    docker run -it --rm -v (pwd):/sync -v $HOME/.renv:/root/.local/share/renv dr666m1/myr
end
```
