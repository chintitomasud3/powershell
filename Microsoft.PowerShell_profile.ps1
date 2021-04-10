Import-Module -Name networkprocess,killprocess,utility -Force


function Get-GitStatus { & git status -sb $args }
New-Alias -Name s -Value Get-GitStatus -Force -Option AllScope




function Get-GitStatus { & git status -sb $args }
New-Alias -Name s -Value Get-GitStatus -Force -Option AllScope



function gcr
        {
          git clone https://github.com/chintitomasud3/$args.git
        }
        