#Set github directory
$gitDir = 'C:\git\'

#======================================================================


#move to github directory
cd $gitDir

#get list of repos
$dirList = Get-ChildItem | ?{ $_.PSIsContainer } | Select-Object FullName


#loop over each repo and preform action
foreach($repo in $dirList)
{
    Write-Output "Moving into"$repo.FullName

    #move to that directory
    cd $repo.FullName
    #dir
    git pull
}


