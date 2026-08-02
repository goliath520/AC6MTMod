-- 在顶层声明 maxScriptRunner 变量
local maxScriptRunner = undefined

-- 打开文件浏览器选择文件夹
local folderPath = getDir caption:"选择文件夹" initialDir:"C:\\"

if folderPath != undefined do
(
    -- 获取文件夹中的所有文件
    local files = getFiles (folderPath + "\\*.hkx")

    -- 遍历文件列表并导入
    for file in files do
    (
        -- 导入文件
        try
        (
            ImportFile file #noPrompt
            format "导入成功: %\n" file
        )
        catch
        (
            format "导入失败: %, 错误信息: %\n" file (getMAXScriptFile "&maxscript.tmp")
        )
    )
)
