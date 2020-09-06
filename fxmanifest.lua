
fx_version 'bodacious'
games { 'gta5' }

server_script 'server/http/http.lua'
server_script 'server/http/http_sql.lua'
server_script 'server/http/http_requests.lua'
server_script 'server/player_functions.lua'

client_script 'client/startup/startup.lua'

ui_page 'ui/index.html'

files {

    'ui/index.html',
    'ui/libs/jquery.js'

}