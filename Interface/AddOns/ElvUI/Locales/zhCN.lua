-- Simplified Chinese localization file for zhCN.
local E = unpack(ElvUI)
local L = E.Libs.ACL:NewLocale('ElvUI', 'zhCN')

L["Countdown"] = "倒计时"
L["Reset"] = "重置"
L["ELVUI_DESC"] = ("*ElvUI|r|cFFffffff为一套功能完整, 可用来替换WoW原始界面的套件|r"):gsub('*', E.InfoColor)
L["UPDATE_REQUEST"] = "There seems to be an issue with your installation. Please reinstall ElvUI."
L[" |cff00ff00bound to |r"] = " |cff00ff00绑定到 |r"
L["%s frame has a conflicting anchor point. Forcing the Buffs to be attached to the main unitframe."] = "%s 框架有一个冲突的锚点。强制将增益附加到主单元框架上。"
L["%s is attempting to share his filters with you. Would you like to accept the request?"] = "%s 试图与你分享过滤器配置. 你是否接受?"
L["%s is attempting to share the profile %s with you. Would you like to accept the request?"] = "%s 试图与你分享配置文件 %s. 你是否接受?"
L["%s: %s tried to call the protected function '%s'."] = "%s: %s 尝试调用保护函数 '%s'."
L["(Ctrl & Shift Click) Toggle CPU Profiling"] = "（Ctrl 和 Shift + 单击）切换 CPU 分析"
L["(Hold Shift) Memory Usage"] = "(按住Shift) 内存占用"
L["(Shift Click) Collect Garbage"] = "(Shift + 点击) 回收垃圾"
L["A raid marker feature is available by pressing Escape -> Keybinds. Scroll to the bottom -> ElvUI -> Raid Marker."] = "按 Escape -> 按键设置 可以使用团队标记功能。滚动到底部 -> ElvUI -> 团队标记。"
L["A setting you have changed will change an option for this character only. This setting that you have changed will be uneffected by changing user profiles. Changing this setting requires that you reload your User Interface."] = "你所做的改动只会影响到使用这个插件的本角色, 你需要重新加载界面才能使改动生效."
L["ABOVE_THREAT_FORMAT"] = "%s: %.0f%% [%.0f%% 以上 |cff%02x%02x%02x%s|r]"
L["Accepting this will reset the UnitFrame settings for %s. Are you sure?"] = "接受这个将重置关于%s的单位单位框架. 你确定吗？"
L["Accepting this will reset your Filter Priority lists for all auras on NamePlates. Are you sure?"] = "接受这个将重置姓名板中所有光环的过滤器优先级. 你确定吗？"
L["Accepting this will reset your Filter Priority lists for all auras on UnitFrames. Are you sure?"] = "接受这个将重置单位框架中所有光环的过滤器优先级. 你确定吗？"
L["Active Output Audio Device"] = "有源输出音频设备"
L["AddOn Memory:"] = "插件内存:"
L["Adjust the UI Scale to fit your screen."] = "调整 UI 比例以适合您的屏幕。"
L["Affix"] = "词缀"
L["AFK"] = "离开"
L["All keybindings cleared for |cff00ff00%s|r."] = "取消 |cff00ff00%s|r 所有绑定的快捷键."
L["Alliance: "] = "联盟: "
L["Already Running.. Bailing Out!"] = "正在运行!"
L["Alternative Power"] = "特殊能量条"
L["Ammo/Shard Counter"] = "弹药/碎片计数器"
L["AP:"] = "神器能量:"
L["Archeology Progress Bar"] = "考古进度条"
L["Are you sure you want to apply this font to all ElvUI elements?"] = "确定要对所有ElvUI元素使用这个字体?"
L["Are you sure you want to disband the group?"] = "确定要解散队伍?"
L["Are you sure you want to reset all the settings on this profile?"] = "确定需要重置这个配置文件中的所有设置?"
L["Are you sure you want to reset every mover back to it's default position?"] = "确定需要重置所有框架至默认位置?"
L["Arena Frames"] = "竞技场框架"
L["Arena"] = "竞技场"
L["Aura Bars"] = "光环条"
L["Auras Set"] = "光环设定"
L["Auras"] = "光环"
L["Auto Scale"] = "自动缩放"
L["AVD: "] = "免伤: "
L["Avoidance Breakdown"] = "免伤统计"
L["Azerite Bar"] = "艾泽里特能量条"
L["Bag Bar"] = "背包条"
L["Bags (Grow Down)"] = "背包(向下)"
L["Bags (Grow Up)"] = "背包(向上)"
L["Bags"] = "背包"
L["Bandwidth"] = "带宽"
L["Bank (Grow Down)"] = "银行(向下)"
L["Bank (Grow Up)"] = "银行(向上)"
L["Bank"] = "银行"
L["Bar "] = "动作条 "
L["Bars"] = "条"
L["Battleground datatexts temporarily hidden, to show type /bgstats"] = "战场数据文本暂时隐藏，需要显示请输入 /bgstats"
L["Battleground datatexts will now show again if you are inside a battleground."] = "当你处于战场时战场信息将再次显示."
L["BelowMinimapWidget"] = "小地图部件下方"
L["Binding"] = "绑定"
L["BINDINGS_HELP"] = ("将鼠标悬停在任何  *动作栏|r, *微栏|r, *宏命令|r, 或者 *法术书|r 按钮上以绑定它. 这也适用于 *背包|r 中的物品. 按 ^ESC|r 键用以 ^清除|r 当前绑定."):gsub('*', E.InfoColor):gsub('%^', E.InfoColor2)
L["Binds Discarded"] = "取消绑定"
L["Binds Saved"] = "保存绑定"
L["Blizzard Widgets"] = "暴雪小工具"
L["BNet Frame"] = "战网提示信息"
L["BoE"] = "装绑"
L["BoP"] = "拾取绑定"
L["Boss Button"] = "特殊技能键"
L["Boss Frames"] = "首领框架"
L["Boss"] = "首领"
L["BossBannerWidget"] = "Boss拾取"
L["BoU"] = "使用绑定"
L["Buffs"] = "增益光环"
L["Building(s) Report:"] = "建筑报告:"
L["Calendar"] = "日历"
L["Calling Quest(s) available."] = "可用的呼叫任务"
L["Can't buy anymore slots!"] = "银行背包栏位已达最大值"
L["Can't Roll"] = "无法需求此装备"
L["Character: "] = "角色: "
L["Chat Set"] = "聊天设定"
L["Chat"] = "聊天框"
L["Choose a theme layout you wish to use for your initial setup."] = "为你的个人设置选择一个你喜欢的皮肤主题."
L["Class Bar"] = "职业特有条"
L["Classic"] = "经典"
L["Combat Indicator"] = true
L["Combat"] = "战斗"
L["Combat/Arena Time"] = "战斗时间"
L["Config Mode:"] = "设置模式:"
L["Confused.. Try Again!"] = "请再试一次！"
L["Continue"] = "下一步"
L["Coords"] = "坐标"
L["copperabbrev"] = "|cffeda55f铜|r"
L["Current Difficulties:"] = "当前难度:"
L["Current Level:"] = "当前等级:"
L["CVars Set"] = "参数设定"
L["CVars"] = "参数"
L["Daily Reset"]="日常重置："
L["Dark"] = "黑暗"
L["Data From: %s"] = "数据来源: %s"
L["Dead"] = "死亡"
L["Debuffs"] = "减益光环"
L["Deficit:"] = "亏损:"
L["Delete gray items?"] = "删除灰色物品?"
L["Deposit Reagents"] = "导入材料"
L["Deposit Warbound Items"] = true
L["Disable Warning"] = "禁用警告"
L["Disable"] = "禁用"
L["Disabled"] = "已禁用"
L["Disband Group"] = "解散队伍"
L["Discard"] = "取消"
L["Discord"] = true
L["DND"] = "忙碌"
L["Do you swear not to post in technical support about something not working without first disabling the addon/module combination first?"] = "你发誓在你没停用其他插件前不会到技术支持询问某些功能失效吗？"
L["Don't forget to backup your WTF folder, all your profiles and settings are in there."] = "不要忘记备份您的 WTF 文件夹，您的所有配置文件和设置都在其中。"
L["Download"] = "下载"
L["DPS"] = "伤害输出"
L["Durability Frame"] = "耐用性框架"
L["Earned:"] = "赚取:"
L["Elite"] = "精英"
L["ElvUI has a dual spec feature which allows you to load different profiles based on your current spec on the fly. You can enable it in the profiles tab."] = "ElvUI 具有双重规格功能，可让您根据当前规格即时加载不同的配置文件。您可以在配置文件选项卡中启用它。"
L["ElvUI Installation"] = "安装 ElvUI"
L["ElvUI is five or more revisions out of date. You can download the newest version from tukui.org."] = "ElvUI已过期5个或者更多的版本。你可以在tukui.org下载到最新的版本。"
L["ElvUI is out of date. You can download the newest version from tukui.org."] = "ElvUI已过期。你可以在tukui.org下载到最新的版本。"
L["ElvUI Plugin Installation"] = "ElvUI插件安装"
L["Status"] = "信息"
L["ElvUI Version:"] = "ElvUI 版本:"
L["Error resetting UnitFrame."] = "重置单位框架出现错误."
L["EventToastWidget"] = "事件消息框小部件"
L["Experience Bar"] = "经验条"
L["Experience"] = "经验/声望条"
L["Filter download complete from %s, would you like to apply changes now?"] = "过滤器配置下载于 %s, 你是否现在变更?"
L["Finished"] = "完成"
L["Fishy Loot"] = "贪婪"
L["Focus Aura Bars"] = true
L["Focus Castbar"] = "焦点目标施法条"
L["Focus Frame"] = "焦点目标框架"
L["FocusTarget Frame"] = "焦点目标框架"
L["Frame"] = "框架"
L["Friends List"] = "好友列表"
L["From time to time you should compare your ElvUI version against the most recent version on our website."] = true
L["G"] = "公会"
L["Ghost"] = "鬼魂"
L["GM Ticket Frame"] = "GM对话框"
L["Gold"] = "金"
L["goldabbrev"] = "|cffffd700金|r"
L["Grays"] = "灰色"
L["Grid Size:"] = "网格尺寸:"
L["Heal Power"] = "治疗强度"
L["Healer"] = "治疗"
L["Hold Control + Right Click:"] = "按住 Ctrl + 鼠标右键:"
L["Hold Shift + Drag:"] = "按住 Shift 并拖动:"
L["Hold Shift + Right Click:"] = "按住Shift + 右键点击:"
L["Hold Shift:"] = "按住Shift:"
L["Home Latency:"] = "本机延迟:"
L["Home Protocol:"] = "本地协议:"
L["Honor Bar"] = "荣誉条"
L["Honor Remaining:"] = "荣誉值剩余:"
L["Honor XP:"] = "荣誉值:"
L["Horde: "] = "部落: "
L["HP"] = "生命值"
L["HPS"] = "治疗输出"
L["I Swear"] = "我承诺"
L["I"] = "副本"
L["Icons Only"] = "图标"
L["If you accidentally removed a default chat tab you can always re-run the chat part of the ElvUI installer."] = "如果您不小心删除了默认聊天选项卡，您可以随时重新运行 ElvUI 安装程序的聊天部分。"
L["If you are experiencing issues with ElvUI try disabling all your addons except ElvUI first."] = "如果您在使用 ElvUI 时遇到问题，请先尝试禁用除 ElvUI 之外的所有插件。"
L["If you have an icon or aurabar that you don't want to display simply hold down shift and right click the icon for it to disapear."] = "如果你不希望显示某个光环图标或者光环条，只需要按住shift并右键点击它."
L["IL"] = "副本领袖"
L["Importance: |cFF33FF33Low|r"] = "重要性:|cFF33FF33低|r"
L["Importance: |cffD3CF00Medium|r"] = "重要性: |cffD3CF00中|r"
L["Importance: |cffFF3333High|r"] = "重要度: |cffFF3333高|r"
L["In Progress"] = "正在进行中"
L["Include Reagents"] = true
L["INCOMPATIBLE_ADDON"] = "%s 不兼容与 %s.\n请选择要使用的插件/模块。"
L["Installation Complete"] = "安装完成"
L["Interrupted %s's |cff71d5ff|Hspell:%d:0|h[%s]|h|r!"] = "已打断 %s 的 |cff71d5ff|Hspell:%d:0|h[%s]|h|r!"
L["Invalid Target"] = "无效的目标"
L["is looking for members"] = "正在寻找队友"
L["It appears one of your AddOns have disabled the AddOn Blizzard_CompactRaidFrames. This can cause errors and other issues. The AddOn will now be re-enabled."] = "看起来你使用的一个插件使得Blizzard_CompactRaidFrames停用了。这会产生错误与问题。这个插件现在会被重新启用"
L["Item level: %.2f"] = "物品等级：%.2f"
L["Item Level:"] = "物品等级："
L["joined a group"] = "加入队伍"
L["Key"] = "键"
L["KEY_ALT"] = "A"
L["KEY_CTRL"] = "C"
L["KEY_META"] = "M"
L["KEY_DELETE"] = "Del"
L["KEY_HOME"] = "Hm"
L["KEY_INSERT"] = "Ins"
L["KEY_MOUSEBUTTON"] = "M"
L["KEY_MOUSEWHEELDOWN"] = "MwD"
L["KEY_MOUSEWHEELUP"] = "MwU"
L["KEY_NDIVIDE"] = "N/"
L["KEY_NEQUALS"] = "N="
L["KEY_NMINUS"] = "N-"
L["KEY_NMULTIPLY"] = "N*"
L["KEY_NPLUS"] = "N+"
L["KEY_NUMPAD"] = "N"
L["KEY_PAGEDOWN"] = "PD"
L["KEY_PAGEUP"] = "PU"
L["KEY_SHIFT"] = "S"
L["KEY_SPACE"] = "SpB"
L["Layout Set"] = "界面布局设置"
L["Layout"] = "界面布局"
L["Left Chat"] = "左侧对话框"
L["Left Click:"] = "左键:"
L["Level %d"] = "等级 %d"
L["Level"] = "等级"
L["List of installations in queue:"] = "即将安装的列表:"
L["Loadouts"] = true
L["Location"] = true
L["Lock"] = "锁定"
L["LOGIN_MSG"] = ("欢迎使用*ElvUI|r 版本*%s|r，输入*/ec|r 访问游戏内配置菜单。如果您需要技术支持，您可以访问我们的 https://tukui.org 或加入我们的 Discord：https://discord.tukui.org"):gsub('*', E.InfoColor)
L["LOGIN_MSG_HELP"] = ("请使用 */ehelp|r 获取可用的 *ElvUI|r 命令列表。"):gsub('*', E.InfoColor)
L["LOGIN_PTR"] = ("|cffff3333您当前未运行 *ElvUI|r 的 PTR 版本，这可能会导致问题|r ^请从以下链接下载 PTR 版本。|r %s"):gsub('*', E.InfoColor):gsub('%^', E.InfoColor2)
L["Loot / Alert Frames"] = "拾取/提醒框"
L["Loot Frame"] = "拾取框架"
L["Lord! It's a miracle! The download up and vanished like a fart in the wind! Try Again!"] = "天啊! 太奇葩了! 下载消失了! 就像在风中放了一个屁... 再试一次吧!"
L["Loss Control Icon"] = "失去控制图标"
L["lvl"] = "等级"
L["MA Frames"] = "主助理框"
L["Max Level"] = "最高等级"
L["Micro Bar"] = "微型系统菜单"
L["Minimap Cluster"] = true
L["Minimap"] = "小地图"
L["MirrorTimer"] = "镜像计时器"
L["Mission(s) Report:"] = "任务报告:"
L["Mitigation By Level: "] = "等级减伤: "
L["Mobile"] = "App"
L["Mov. Speed"] = "移动速度"
L["MT Frames"] = "主坦克框"
L["Mythic+ Best Run:"] = "史诗最佳通关:"
L["Mythic+ Score:"] = "史诗分数:"
L["Naval Mission(s) Report:"] = "海军任务报告:"
L["Need help? Join our Discord: https://discord.tukui.org"] = "需要帮助？加入我们的 Discord：https://discord.tukui.org"
L["New Profile will create a fresh profile for this character."] = "新配置文件将为该角色创建一个全新的配置。"
L["New Profile"] = "新配置"
L["No bindings set."] = "无绑定设定"
L["No gray items to sell."] = true
L["No Guild"] = "没有公会"
L["No Loot"] = "无拾取"
L["None"] = "无"
L["Nudge"] = "微调"
L["O"] = "官员"
L["Objective Frame"] = "任务框架"
L["Offline"] = "离线"
L["Oh lord, you have got ElvUI and Tukui both enabled at the same time. Select an addon to disable."] = "你不能同时使用Elvui和Tukui，请选择一个禁用."
L["One or more of the changes you have made require a ReloadUI."] = "已变更一或多个设定，需重载界面."
L["One or more of the changes you have made will effect all characters using this addon. You will have to reload the user interface to see the changes you have made."] = "你所做的改动可能会影响到使用这个插件的所有角色，你需要重新加载界面才能使改动生效。"
L["Output Audio Device"] = "输出音频设备"
L["P"] = "队伍"
L["Paragon"] = "巅峰"
L["Party Frames"] = "小队框架"
L["Pending"] = "等待中"
L["Pet Aura Bars"] = true
L["Pet Bar"] = "宠物动作条"
L["Pet Castbar"] = "宠物施法条"
L["Pet Experience Bar"] = "宠物经验条"
L["Pet Experience"] = "宠物经验"
L["Pet Frame"] = "宠物框架"
L["PetTarget Frame"] = "宠物目标框架"
L["PL"] = "队长"
L["Player Aura Bars"] = true
L["Player Buffs"] = "玩家增益"
L["Player Castbar"] = "玩家施法条"
L["Player Debuffs"] = "玩家减益"
L["Player Frame"] = "玩家框架"
L["Player NamePlate"] = "玩家姓名板"
L["Please click the button below so you can setup variables and ReloadUI."] = "请按下方按钮设定变数并重载介面。"
L["Please click the button below to setup your CVars."] = "请按下方按钮设定参数."
L["Please click the button below to setup your Profile Settings."] = "请单击下面的按钮来设置您的个人配置文件设置。"
L["Please press the continue button to go onto the next step."] = "请按继续按钮到下一步"
L["PowerBarWidget"] = "能量条小工具"
L["Profile download complete from %s, but the profile %s already exists. Change the name or else it will overwrite the existing profile."] = "配置文件从 %s 下载完成, 但是配置文件 %s 已存在. 请更改名称, 否则它会覆盖你的现有配置文件."
L["Profile download complete from %s, would you like to load the profile %s now?"] = "配置文件从 %s 下载完成, 你是否加载配置文件 %s?"
L["Profile request sent. Waiting for response from player."] = "已发送文件请求. 等待对方响应."
L["Profile Settings Setup"] = "配置文件设置"
L["Profit:"] = "利润:"
L["Purchase Bags"] = "购买背包"
L["Purchase"] = "购买"
L["Quest Log XP:"] = true
L["Quest Log"] = true
L["Quest Objective Frame"] = "任务目标框架"
L["Quest Timer Frame"] = "任务计时器框架"
L["R"] = "团队"
L["Raid %d Frames"] = "团队框架 %d"
L["Raid Menu"] = "团队菜单"
L["Raid Pet Frames"] = "团队宠物框架"
L["Rare Elite"] = "稀有精英"
L["Rare"] = "稀有"
L["Reagent Bank"] = "材料银行"
L["Remaining:"] = "剩余:"
L["Remove Bar %d Action Page"] = "移除第%d动作条"
L["Reputation Bar"] = "声望条"
L["Request was denied by user."] = "请求被对方拒绝."
L["Reset Character Data: Hold Shift + Right Click"] = "重置角色数据：按住 Shift + 右键单击"
L["Reset Position"] = "重设位置"
L["Reset Session Data: Hold Ctrl + Right Click"] = "重置会话数据：按住 Ctrl + 右键单击"
L["Rested:"] = "休息:"
L["Right Chat"] = "右侧对话框"
L["Right Click to Open Menu"] = "右键单击打开菜单"
L["RL"] = "团队领袖"
L["RW"] = "团队警告"
L["Save"] = "储存"
L["Saved Dungeon(s)"] = "已有进度的地下城"
L["Saved Raid(s)"] = "已有进度的副本"
L["says"] = "说"
L["Select the type of aura system you want to use with ElvUI's unitframes. Set to Aura Bars to use both aura bars and icons, set to Icons Only to only see icons."] = "选择你想使用的光环系统类型. 选择光环条及图标将会同时显示光环条及图标，选择图标将只会显示图标."
L["Select Volume Stream"] = "选择音频流"
L["Server: "] = "服务器: "
L["Session:"] = "本次登陆:"
L["Setup Chat"] = "设定聊天框"
L["Setup CVars"] = "设定参数"
L["Shared Profile will select the default profile."] = "共享配置文件将选择默认配置文件。"
L["Shared Profile"] = "共享配置文件"
L["Shift + Left Click to Toggle Bag"] = "Shift + 左键单击以切换背包"
L["Show/Hide Reagents"] = "显示/隐藏材料"
L["Shows a frame with needed info for support."] = "显示带有所需信息的框架以获取支持。"
L["silverabbrev"] = "|cffc7c7cf银|r"
L["Sort Bags"] = "整理背包"
L["SP"] = "法术强度"
L["Spec"] = "专精"
L["Spell Haste"] = true
L["Spell Hit"] = "法术命中"
L["Spell Power"] = "法术强度"
L["Spent:"] = "花费:"
L["Stack Items In Bags"] = "将物品堆放在背包里"
L["Stack Items In Bank"] = "将物品堆放在银行里"
L["Stack Items To Bags"] = "将物品堆放到背包里"
L["Stack Items To Bank"] = "将物品堆放到银行里"
L["Stance Bar"] = "姿态条"
L["Steps"] = "步骤"
L["Sticky Frames"] = "框架依附"
L["System"] = "系统信息"
L["Talent/Loot Specialization"] = "天赋/拾取专精"
L["Target Aura Bars"] = true
L["Target Castbar"] = "目标施法条"
L["Target Frame"] = "目标框架"
L["Target Mitigation"] = "目标减伤"
L["Targeted By:"] = "同目标的有:"
L["TargetTarget Frame"] = "目标的目标框架"
L["TargetTargetTarget Frame"] = "目标的目标的目标框架"
L["Temporary Move"] = "移动背包"
L["The chat windows function the same as Blizzard standard chat windows, you can right click the tabs and drag them around, rename, etc. Please click the button below to setup your chat windows."] = "对话窗口与 WOW 原始对话窗口的操作方式相同，你可以拖拉、移动分页或重新命名分页。请按下方按钮以设定对话窗口。"
L["The in-game configuration menu can be accessed by typing the /ec command. Press the button below if you wish to skip the installation process."] = "可以通过输入 /ec 命令访问游戏内配置菜单。如果您想跳过安装过程，请按下面的按钮。"
L["The profile you tried to import already exists. Choose a new name or accept to overwrite the existing profile."] = "你尝试导入的配置文件已经存在。请选择一个新的名字或者确认覆盖存在的配置文件。"
L["The spell '%s' has been added to the '%s' unitframe aura filter."] = "法术\"%s\"已经被添加到单位框架的光环过滤器中."
L["Theme Set"] = "主题设置"
L["Theme Setup"] = "主题安装"
L["This install process will help you learn some of the features in ElvUI has to offer and also prepare your user interface for usage."] = "此安装程序有助你了解 ElvUI 部份功能，并可协助你预先设定 UI。"
L["This part of the installation process sets up your chat windows names, positions and colors."] = "此安装步骤将会设定聊天框的名称、位置和颜色。"
L["This part of the installation process sets up your World of Warcraft default options it is recommended you should do this step for everything to behave properly."] = "此安装步骤将会设定 WOW 预设选项，建议你执行此步骤，以确保功能均可正常运作。"
L["This setting caused a conflicting anchor point, where '%s' would be attached to itself. Please check your anchor points. Setting '%s' to be attached to '%s'."] = "这个设置引起一个互相矛盾的锚点, '%s' 被依附于他自身. 请检查你的锚点设置. 设置 '%s' 依附到 '%s'."
L["This will change the layout of your unitframes and actionbars."] = "这将会改变你单位框架和动作条的构架。"
L["Threat Bar"] = "仇恨栏"
L["Time Alert Frame"] = true
L["To list all available ElvUI commands, type in chat /ehelp"] = "要列出所有可用的ElvUI命令，请在聊天框输入 /ehelp"
L["To quickly move around certain elements of the UI, type /emove"] = "要快速移动UI的某些元素，请输入 /emove"
L["To setup chat colors, chat channels and chat font size, right-click the chat tab name."] = "要设置聊天颜色、聊天频道和聊天字体大小，请右键单击聊天选项卡名称。"
L["Toggle Bags"] = "背包开关"
L["Toggle Chat Frame"] = "开关聊天框架"
L["Toggle Configuration"] = "设置开关"
L["Toggle Volume Stream"] = "切换音频流"
L["Tooltip"] = "鼠标提示"
L["TopCenterWidget"] = "顶部中心小部件"
L["Torghast Choice Toggle"] = true
L["Total CPU:"] = "CPU占用"
L["Total: "] = "合计: "
L["Totem Bar"] = "图腾栏"
L["Totem Tracker"] = "图腾追踪器"
L["Trigger"] = "触发器"
L["UI Scale"] = "UI规模"
L["Unhittable:"] = "未命中:"
L["Vehicle Seat Frame"] = "载具座位框"
L["VehicleLeaveButton"] = "交通工具离开按钮"
L["Vendor Grays"] = "出售灰色物品"
L["Vendored gray items for: %s"] = "已出售灰色物品: %s"
L["Vendoring Grays"] = "正在出售灰色物品"
L["Voice Overlay"] = "语音界面"
L["Volume Streams"] = "音频流"
L["Volume"] = "音量"
L["Welcome to ElvUI version %.2f!"] = "欢迎使用 ElvUI 版本 %.2f!"
L["whispers"] = "密语"
L["World Latency:"] = "世界延迟:"
L["World Protocol:"] = "世界协议:"
L["WoW Token:"] = "时光徽章:"
L["XP:"] = "经验:"
L["yells"] = "大喊"
L["You are now finished with the installation process. If you are in need of technical support please join our Discord."] = "现在，安装过程已经完成。如果您需要技术支持，请加入我们的Discord。"
L["You are using CPU Profiling. This causes decreased performance. Do you want to disable it or continue?"] = "你正在追踪CPU使用记录. 这将导致性能低下. 你想禁用它还是继续?"
L["You can access the copy chat and chat menu functions by left/right clicking on the icon in the top right corner of the chat panel."] = "通过左/右键单击聊天室面板右上角的图标，可以访问复制聊天室和聊天室菜单功能。"
L["You can access the microbar by using middle mouse button on the minimap. You can also enable the MicroBar in the actionbar settings."] = "您可以在小地图上使用鼠标中键访问微栏。您还可以在动作条设置中启用微栏"
L["You can always change fonts and colors of any element of ElvUI from the in-game configuration."] = "你可以在游戏内的设定选项内更改ElvUI的字体、颜色等设定."
L["You can enter the keybind mode by typing /kb"] = "您可以通过输入 /kb 进入按键绑定模式"
L["You can now choose what layout you wish to use based on your combat role."] = "你现在可以根据你的战斗角色选择合适的布局。"
L["You can quickly change your displayed DataTexts by mousing over them while holding ALT."] = "按住ALT键的同时将鼠标悬停在数据文本上，可以快速更改显示的数据文本。"
L["You can see someones average item level inside the tooltip by holding shift and mousing over them."] = "按住shift键并将鼠标悬停在鼠标提示中，您可以查看他的平均物品等级。"
L["You don't have enough money to repair."] = "没有足够的资金来修理."
L["You don't have permission to mark targets."] = "你没有标记目标的权限"
L["You have imported settings which may require a UI reload to take effect. Reload now?"] = "你导入的设置可能需要重载界面才能生效。确认重载？"
L["You must be at a vendor."] = "你必需以商人为目标."
L["You must purchase a bank slot first!"] = "你必需购买一个银行背包栏位"
L["Your items have been repaired for: "] = "装备已修复: "
L["Your items have been repaired using guild bank funds for: "] = "物品已使用公会银行资金修复: "
L["Your profile was successfully recieved by the player."] = "你的配置文件已被其他玩家成功接收."
L["Zone Ability"] = "区域技能"
L["|cFFE30000Lua error recieved. You can view the error message when you exit combat."] = "|cFFE30000LUA错误已接收, 你可以在脱离战斗后检查.|r"
L["|cffFFFFFFControl + Left Click:|r Change Loadout"] = true
L["|cffFFFFFFLeft Click:|r Change Talent Specialization"] = "|cffFFFFFF左键点击:|r 更改当前专精"
L["|cFFffffffLeft Click:|r Select Volume Stream"] = "|cFFffffff左键点击:|r 选择音频流"
L["|cFFffffffMiddle Click:|r Toggle Mute Master Stream"] = "|cFFffffff中键点击:|r 切换主音量静音"
L["|cffFFFFFFRight Click:|r Change Loot Specialization"] = "|cffFFFFFF右键点击:|r 更改拾取专精"
L["|cFFffffffRight Click:|r Toggle Volume Stream"] = "|cFFffffff右键点击：|r 切换音频流"
L["|cFFffffffShift + Left Click:|r Open System Audio Panel"] = "|cFFffffffShift + 左键点击:|r 打开系统音频面板"
L["|cffFFFFFFShift + Left Click:|r Show Talent Specialization UI"] = "|cffFFFFFFShift + 左键点击:|r 显示专精天赋框架"
L["|cFFffffffShift + Right Click:|r Select Output Audio Device"] = "|cFFffffffShift + 右键点击:|r 选择输出音频设备"

----------------------------------
L["DESC_MOVERCONFIG"] = [=[解除框架移动锁定. 现在可以移动它们, 移好后请点击「锁定」.

选项：
  左键 - 打开微调窗口.
  右键 - 打开配置窗口.
  Shift + 右键 - 暂时隐藏定位开关
  Ctrl + 右键 - 重置定位开关位置
]=]

L["EHELP_COMMANDS"] = ([=[这里列出了重要的 *ElvUI|r 命令:
 */ec|r or */elvui|r  -  切换 *选项界面|r.
 */kb|r  -  切换键绑定模式.
 */emove|r  -  切换锚点以重新定位各种元素.
 */ereset|r  -  将所有框架重置为其原始位置.
 */bgstats|r  -  在您的数据文本上切换战场统计信息.
 */estatus|r  -  需要支持方面问题的重要信息.
 */egrid|r ^64|r or ^128|r or ^256|r  -  切换像素网格.
 */edebug|r ^on|r or ^off|r  -  禁用除 ElvUI 之外的所有插件.
  注意: */edebug|r ^off|r 将重新启用禁用的插件从
  使用 */edebug|r ^on|r 之前的会话中.
]=]):gsub('*', E.InfoColor):gsub('%^', E.InfoColor2)
