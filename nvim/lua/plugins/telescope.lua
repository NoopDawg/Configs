return
    {
      'nvim-telescope/telescope.nvim', version = '*',
       dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<c-p>', builtin.find_files,{})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep,{})
        end
    }
