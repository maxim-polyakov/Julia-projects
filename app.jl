using Telegrambot
using UUIDs
botApi = "7421411096:AAFXFtgIE0uheM30_9DDGlrup8iaZxAgUek"

function welcomeMsg(incoming::AbstractString)
    return "Welcome to my awesome bot"
end

function echo(incoming::AbstractString)
    return incoming
end

txtCmds = Dict()
txtCmds["repeat_msg"] = echo #this will respond to '/repeat_msg <any thing>'
txtCmds["start"] = welcomeMsg # this will respond to '/start'

inlineOpts = Dict() #Title, result pair
inlineOpts["Make Uppercase"] = uppercase #this will generate an pop-up named Make Uppercase and upon tapping return uppercase(<user_input>)

#uppercase is a function that takes a string and return the uppercase version of that string

startBot(botApi; textHandle = txtCmds, inlineQueryHandle=inlineOpts)
