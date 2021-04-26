# Stata-to-GitHub Tutorial 

The folder was auto-synchronized from Stata. For first time use with the readme.md use the following commands in Stata:

> ! echo # github-tutorial >> README.md
> ! git init
> ! git add README.md
> ! git commit -m "my first github upload comment"
> ! git remote add origin https://github.com/asjadnaqvi/github-tutorial.git
> ! git push -u origin main


To update contents in the folder once new files are generated:

> ! git remote add origin 'https://github.com/asjadnaqvi/github-tutorial.git'
> ! git add --all
> ! git commit -m 'minor fixes'
> ! git push 
