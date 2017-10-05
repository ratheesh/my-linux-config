" Dark Theme v0.1
"
" Based on https://github.com/zenorocha/dracula-theme
"
" Copyright 2017, All rights reserved
"
" Code licensed under the MIT license
" http://zenorocha.mit-license.org
"
" @author Ratheesh <ratheeshreddy@gmail.com> <@ratheeshreddy>
" @author Trevor Heins <@heinst>
" @author Éverton Ribeiro <nuxlli@gmail.com>
" @author Zeno Rocha <hi@zenorocha.com>

set background=dark
scriptencoding utf-8
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "darktheme"

" syntax match Operator "[-+&|<>=!\/~:*%&^?]"

hi Cursor 	ctermfg=NONE 	ctermbg=NONE 	cterm=inverse guifg=#282a36 guibg=#f8f8f0 gui=NONE
hi Visual 	ctermfg=NONE 	ctermbg=237	cterm=NONE guifg=NONE guibg=#44475a gui=NONE
hi CursorLine 	ctermbg=234 			cterm=NONE guifg=NONE guibg=#44475a gui=NONE
hi CursorColumn ctermbg=233 			cterm=NONE guifg=NONE guibg=#44475a gui=NONE
hi ColorColumn	ctermfg=NONE 	ctermbg=234 	cterm=NONE guifg=NONE guibg=#3d3f49 gui=NONE
hi LineNr 	ctermfg=60 	ctermbg=233 	cterm=NONE guifg=#6272a4 guibg=#282a36 gui=NONE
hi CursorLineNr ctermfg=89	ctermbg=7	cterm=bold guifg=#f1fa8c guibg=#44475a gui=NONE
hi VertSplit 	ctermfg=7 	ctermbg=236 	cterm=bold guifg=#64666d guibg=#64666d gui=bold
hi MatchParen 	ctermfg=126 	ctermbg=NONE 	cterm=underline,bold guifg=#ff79c6 guibg=NONE gui=underline
hi StatusLine 	ctermfg=7 	ctermbg=236 	cterm=bold guifg=#f8f8f2 guibg=#64666d gui=bold
hi StatusLineNC ctermfg=7 	ctermbg=236 	cterm=NONE guifg=#f8f8f2 guibg=#64666d gui=NONE
hi IncSearch 	ctermfg=7 	ctermbg=8 	cterm=none guifg=#282a36 guibg=#ffb86c gui=none
hi Search 	ctermfg=7 	ctermbg=8 	cterm=none guifg=#282a36 guibg=#50fa7b gui=none
hi Directory 	ctermfg=141 	ctermbg=NONE 	cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Folded 	ctermfg=61 	ctermbg=235 	cterm=NONE guifg=#6272a4 guibg=#282a36 gui=NONE
hi SignColumn 	ctermfg=246 	ctermbg=235 	cterm=NONE guifg=#909194 guibg=#44475a gui=NONE
hi FoldColmun 	ctermfg=246 	ctermbg=235 	cterm=NONE guifg=#909194 guibg=#44475a gui=NONE
hi Normal 	ctermfg=7 				   guifg=#f8f8f2 guibg=#282a36 gui=NONE
hi Boolean 	ctermfg=141 	ctermbg=NONE 	cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Character 	ctermfg=66 	ctermbg=NONE 	cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Comment 	ctermfg=243 	ctermbg=NONE 	cterm=italic guifg=#6272a4 guibg=NONE gui=NONE
hi Conditional 	ctermfg=25 	ctermbg=NONE 	cterm=italic guifg=#ff79c6 guibg=NONE gui=NONE
hi Constant 	ctermfg=NONE 	ctermbg=NONE 	cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define 	ctermfg=212 	ctermbg=NONE 	cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi ErrorMsg 	ctermfg=7 	ctermbg=212 	cterm=NONE guifg=#f8f8f0 guibg=#ff79c6 gui=NONE
hi WarningMsg 	ctermfg=162 	ctermbg=212 	cterm=NONE guifg=#f8f8f0 guibg=#ff79c6 gui=NONE
hi Float 	ctermfg=141 	ctermbg=NONE 	cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Function 	ctermfg=148 	ctermbg=NONE 	cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi Identifier 	ctermfg=81 	ctermbg=NONE 	cterm=italic guifg=#8be9fd guibg=NONE gui=italic
hi Keyword 	ctermfg=128 	ctermbg=NONE 	cterm=italic guifg=#ff79c6 guibg=NONE gui=NONE
hi Label 	ctermfg=137 	ctermbg=NONE 	cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi NonText 	ctermfg=7 	ctermbg=NONE 	cterm=NONE guifg=#525563 guibg=NONE gui=NONE
hi Number 	ctermfg=137	ctermbg=NONE 	cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi Operator 	ctermfg=59 	ctermbg=NONE 	cterm=bold guifg=#ff79c6 guibg=NONE gui=NONE
hi PreProc 	ctermfg=6 	ctermbg=NONE 	cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi Special 	ctermfg=7 	ctermbg=NONE 	cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
hi SpecialKey 	ctermfg=7 	ctermbg=235 	cterm=NONE guifg=#525563 guibg=NONE gui=NONE
hi Statement 	ctermfg=95 	ctermbg=NONE 	cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi StorageClass ctermfg=127 	ctermbg=NONE 	cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
hi String 	ctermfg=60 	ctermbg=NONE 	cterm=italic guifg=#f1fa8c guibg=NONE gui=NONE
hi Tag 		ctermfg=212 	ctermbg=NONE 	cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi Title 	ctermfg=7 	ctermbg=NONE 	cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
hi Todo 	ctermfg=61 	ctermbg=NONE 	cterm=inverse,bold guifg=#6272a4 guibg=NONE gui=inverse,bold
hi Type 	ctermfg=68 	ctermbg=NONE 	cterm=italic guifg=#8be9fd guibg=NONE gui=NONE
hi Underlined 	ctermfg=NONE 	ctermbg=NONE 	cterm=underline guifg=NONE guibg=NONE gui=underline

" Menu selection {{{
hi Pmenu 	ctermfg=7 	ctermbg=238 	cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel 	ctermfg=184 	ctermbg=67 	cterm=NONE guifg=NONE guibg=#44475a gui=NONE
hi PmenuSbar    ctermfg=NONE 	ctermbg=NONE 	cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuThumb   ctermfg=NONE 	ctermbg=NONE 	cterm=NONE guifg=NONE guibg=NONE gui=NONE
"}}}

" Diff {{{
hi DiffAdd 	ctermfg=7 	ctermbg=64 	cterm=bold guifg=#f8f8f2 guibg=#468410 gui=bold
hi DiffDelete 	ctermfg=88 	ctermbg=NONE 	cterm=NONE guifg=#8b080b guibg=NONE gui=NONE
hi DiffChange 	ctermfg=7 	ctermbg=23 	cterm=NONE guifg=#f8f8f2 guibg=#243a5f gui=NONE
hi DiffText 	ctermfg=7 	ctermbg=24 	cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold
"}}}

" Ruby {{{
hi rubyClass 	ctermfg=212 	ctermbg=NONE 	cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyFunction ctermfg=84 	ctermbg=NONE 	cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=NONE
hi rubyInclude ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi rubyEscape ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi rubyControl ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyException ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
"}}}

" eRuby {{{
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=61 ctermbg=NONE cterm=NONE guifg=#6272a4 guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
"}}}

" HTML {{{
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"}}}

" Java Script {{{
hi javaScriptFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"}}}

" Yaml {{{
hi yamlKey ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
"}}}

" CSS {{{
hi cssURL ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic
hi cssFunctionName ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi cssClassName ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#6be5fd guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"}}}

" TabLine {{{
hi TabLine      ctermfg=244  	ctermbg=236    	cterm=NONE
hi TabLineFill  ctermfg=246  	ctermbg=8     	cterm=NONE
hi TabLineSel   ctermfg=231  	ctermbg=60  	cterm=italic
"}}}

" Elixir {{{
hi elixirAtom ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic"
hi elixirModuleDeclaration ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic"
hi elixirAlias ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic"
hi elixirInterpolationDelimiter ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi elixirStringDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
"}}}

" Vim Script {{{
hi vimGroupName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
hi vimGroup ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
hi vimOption ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
hi vimHiCtermFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
hi vimHiGuiFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
" }}}

" Markdown: {{{
hi markdownH1 ctermfg=141 ctermbg=NONE cterm=bold guifg=#bd93f9 guibg=NONE gui=bold"
hi markdownH2 ctermfg=141 ctermbg=NONE cterm=bold guifg=#bd93f9 guibg=NONE gui=bold"
hi markdownH3 ctermfg=212 ctermbg=NONE cterm=bold guifg=#ff79c6 guibg=NONE gui=bold"
hi markdownH4 ctermfg=212 ctermbg=NONE cterm=bold guifg=#ff79c6 guibg=NONE gui=bold"
hi markdownH5 ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
hi markdownH6 ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE

hi markdownCode ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi markdownCodeBlock ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
hi markdownCodeDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE

hi markdownBlockquote ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi markdownListMarker ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi markdownOrderedListMarker ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi markdownRule ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
hi markdownHeadingRule ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE

hi markdownUrlDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic"
hi markdownLinkDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic"
hi markdownLinkTextDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic"

hi markdownHeadingDelimiter ctermfg=117 ctermbg=NONE cterm=bold guifg=#8be9fd guibg=NONE gui=bold"
hi markdownUrl ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
hi markdownUrlTitleDelimiter ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
" }}}


"
"cygwin has an annoying behavior where it resets background to light
"regardless of what is set above, so we force it yet again
"
"add these to get cygwin shell working when used to ssh into a centos6 vm
"this requires your TERM=xterm-256color in the guest vm
"- one way to do this is to append to /home/vagrant/.bash_profile ala:
"      TERM=xterm-256color
"      export $TERM

execute "set background=dark"
"-------------------
