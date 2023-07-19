local status_ok, treesitter = pcall(require, "vimwiki")
if not status_ok then
	return
end

-- local status_ok, configs = pcall(require, "vimwiki")
-- if not status_ok then
-- 	return
-- end

vim.g.vimwiki_list = {
    {
        path = '~/Documents/vimwiki/',
        syntax = 'markdown',
        ext = '.md',
    }
}
