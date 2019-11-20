function mnetstop { & Disable-NetAdapter -name ethernet -confirm:$false }



function mnetstart { & Enable-NetAdapter -name ethernet -confirm:$false }

function masudstart { & Enable-NetAdapter -name ethernet -confirm:$false }



