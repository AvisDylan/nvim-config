local pattern = { "*.c", "*.h", "*.cpp", "*.hpp", "*.s", "*.java", "*.go" }

local function add_header()
    local name = vim.fn.system("git config user.name"):gsub("\n", "")

    if name == "" then
        name = os.getenv("USER") or "{your_name}"
    end

    local date = os.date("%d/%m/%Y")

    local filename = vim.fn.expand("%:t")
    local extension = vim.fn.expand("%:e")

    local prefix = (extension == "s") and "#" or "//"
    local header = string.format("%s Created by %s on %s", prefix, name, date);
    local lines = { header, "" }

    if extension == "h" then
        local project = vim.fn.expand("%:p:h:t"):upper():gsub("[^%w]", "_")
        local guard = string.format("%s_%s", project, filename:upper():gsub("[^%w]", "_"))

        table.insert(lines, string.format("#ifndef %s", guard))
        table.insert(lines, string.format("#define %s", guard))
        table.insert(lines, "")
        table.insert(lines, string.format("#endif // %s", guard))
    elseif extension == "hpp" then
        table.insert(lines, "#pragma once")
        table.insert(lines, "")
    elseif extension == "s" then
        table.insert(lines, ".intel_syntax noprefix")
        table.insert(lines, "")
    end

    vim.api.nvim_buf_set_lines(0, 0, 0, false, lines)
    vim.api.nvim_win_set_cursor(0, { #lines, 0 })
end

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = pattern,
    callback = add_header,
})

vim.api.nvim_create_autocmd("BufAdd", {
    pattern = pattern,
    callback = add_header,
})
