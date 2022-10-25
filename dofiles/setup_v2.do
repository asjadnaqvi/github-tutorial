clear

cap cd "D:/Dropbox/STATA - MEDIUM/graphs/github"

set scheme black_w3d
graph set window fontface "Arial Narrow"


*****


sysuse auto, clear




scatter price mpg 
graph export ./figures/figure1.png, replace wid(1000)

scatter length weight
graph export ./figures/figure2.png, replace wid(1000)

scatter price weight
graph export ./figures/figure3.png, replace wid(1000)

**** For the first time to set up the README.md

/*

! echo # github-tutorial >> README.md
! git init
! git add README.md
! git commit -m 'my first github upload comment'
! git remote add origin https://github.com/asjadnaqvi/github-tutorial.git
! git branch -M main
! git push -u origin main

*/


**** To commit to an existing directory:


*** create a batch file to excute all the git commands in one instance (a Stata windows problem)

file close _all
file open git using mygit.bat, write replace
	file write git "git remote add origin " `"""' "https://github.com/asjadnaqvi/github-tutorial.git" `"""' _n
	file write git "git add --all" _n
	file write git "git commit -m "
	file write git `"""' "file updates" `"""' _n
	file write git "git push" _n
file close git


! mygit.bat




/* // some commands below
! git remote add origin 'https://github.com/asjadnaqvi/github-tutorial.git'

*! git status
! git add --all
! git commit -m 'minor fixes'
! git push

! git add README.md
! git commit -m 'Update readme'
! git push


! git rm <filename>
! git commit -m 'files removed'
! git push











