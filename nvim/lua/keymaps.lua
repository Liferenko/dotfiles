-- Move line up/down
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv")

-- unhighlight search results
vim.keymap.set('n', '<leader>nn', ':nohl<CR>', { silent = true })

-- Add some flags
vim.keymap.set('n', '<leader>rbf', 'o# TODO: REMOVE BEFORE FLIGHT!!!!!!<esc>')

-- Tabs
vim.keymap.set('n', '<leader>ve', ':Vexplore<CR>')
vim.keymap.set('n', '<leader>te', ':Texplore<CR>')

-- DB
vim.keymap.set('n', '<leader>db', ':DBUIToggle<CR>')

-- Files
vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>f', ':Buffers<CR>')

-- Documentation
vim.keymap.set('n', '<leader>z', '<Plug>DashSearch')
vim.keymap.set('n', '<leader>ss', '<Plug>SearchNormal', { silent = true })
vim.keymap.set('v', '<leader>ss', '<Plug>SearchVisual', { silent = true })

-- Grep
vim.keymap.set('n', '<leader>ag', ':Ag<CR>')
vim.keymap.set('n', '<Leader>co', ':copen<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')

-- Speedtest
vim.keymap.set('n', '<leader>fas', ':!curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -<CR>')

-- Terminal
vim.keymap.set('n', '<leader>tv', ':vnew | terminal ')
-- Send selected to nvim terminal
vim.keymap.set('v', '<leader>ts', 'y<C-w>wpa<CR><C-><C-n><C-w>p')
