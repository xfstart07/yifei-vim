set guioptions=ce
set antialias
colorscheme zenburn 
set linespace=2
set vb t_vb= "关闭响铃和闪屏

if has("gui_macvim")
	set guifont=Monaco:h14
elseif has("gui_gtk")
	set guifont=Monospace\ 12
else
	set guifont=Monaco:h14
end
