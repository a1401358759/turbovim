local status_ok, alpha = pcall(require, "alpha")

if not status_ok then
    return
end

local dashboard = require("alpha.themes.dashboard")


local function pick_color()
    local colors = {"String", "Identifier", "Keyword", "Number", "Include"}
    return colors[math.random(#colors)]
end

dashboard.section.header.val = {
    [[ ______               __              __  __                     ]],
    [[/\__  _\             /\ \            /\ \/\ \  __                ]],
    [[\/_/\ \/ __  __  _ __\ \ \____    ___\ \ \ \ \/\_\    ___ ___    ]],
    [[   \ \ \/\ \/\ \/\`'__\ \ '__`\  / __`\ \ \ \ \/\ \ /' __` __`\  ]],
    [[    \ \ \ \ \_\ \ \ \/ \ \ \L\ \/\ \L\ \ \ \_/ \ \ \/\ \/\ \/\ \ ]],
    [[     \ \_\ \____/\ \_\  \ \_,__/\ \____/\ `\___/\ \_\ \_\ \_\ \_\]],
    [[      \/_/\/___/  \/_/   \/___/  \/___/  `\/__/  \/_/\/_/\/_/\/_/]],
    [[                                                                 ]],

    -- [[                                              ]],
    -- [[  ______           __        _    ___         ]],
    -- [[ /_  __/_  _______/ /_  ____| |  / (_)___ ___ ]],
    -- [[  / / / / / / ___/ __ \/ __ \ | / / / __ `__ \]],
    -- [[ / / / /_/ / /  / /_/ / /_/ / |/ / / / / / / /]],
    -- [[/_/  \__,_/_/  /_.___/\____/|___/_/_/ /_/ /_/ ]],
    -- [[                                              ]],
    [[                   写字楼里写字间，写字间里程序员；              ]],
    [[                   程序人员写程序，又拿程序换酒钱。              ]],
    [[                   酒醒只在网上坐，酒醉还来网下眠；              ]],
    [[                   酒醉酒醒日复日，网上网下年复年。              ]],
    [[                   但愿老死电脑间，不愿鞠躬老板前；              ]],
    [[                   奔驰宝马贵者趣，公交自行程序员。              ]],
    [[                   别人笑我忒疯癫，我笑自己命太贱；              ]],
    [[                   不见满街漂亮妹，哪个归得程序员？              ]],
}

dashboard.section.buttons.val = {
    dashboard.button("f", "  Find file", "<leader>ff", {}),
    dashboard.button("o", "  Recently used files", "<leader>fo", {}),
    dashboard.button("g", "  Find text", "<leader>fg", {}),
    dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>", {}),
    dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>", {}),
    dashboard.button("u", "  Update plugins", "<leader>ps", {}),
    dashboard.button("q", "  Quit Neovim", ":qa<CR>", {})
}

local function footer()
    local total_plugins = #vim.tbl_keys(packer_plugins)
    local datetime = os.date(" %Y-%m-%d   %H:%M:%S")
    local version = vim.version()
    local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

    return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
--[[ dashboard.section.header.opts.hl = pick_color() ]]
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
