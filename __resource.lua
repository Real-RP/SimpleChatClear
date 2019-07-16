
description "this resource adds the possibility to clear the chat with a control press"

client_scripts {
	'config/config.lua',
	'client.lua'
}

server_script 'server.lua'


ui_page {
    'message/html/ui.html',
}

files {
	'message/html/ui.html',
	'message/html/js/app.js', 
	'message/html/css/style.css',
}