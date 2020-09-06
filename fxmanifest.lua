
fx_version 'bodacious'
games { 'gta5' }

server_script 'server/http/http.lua'
server_script 'server/http/http_sql.lua'
server_script 'server/http/http_requests.lua'

client_script 'client/client.lua'

ui_page 'ui/index.html'

files {

    'ui/index.html',
    'ui/libs/jquery.js'

}