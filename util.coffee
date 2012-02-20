fs = require('fs')

exports.fileExists = fileExists = (path) ->
    try
        fs.statSync(path)
        true
    catch err
        false

exports.getFileContents = getFileContents = (file_name) ->
    if fileExists(file_name)
        return fs.readFileSync(file_name, 'utf8')
