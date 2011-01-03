" Vim color file
" Converted from Textmate theme Slate using Coloration v0.2.5 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Slate"

hi Cursor  guifg=NONE guibg=#8ba7a7 gui=NONE
hi Visual  guifg=NONE guibg=#917834 gui=NONE
hi CursorLine  guifg=NONE guibg=#282a33 gui=NONE
hi CursorColumn  guifg=NONE guibg=#282a33 gui=NONE
hi LineNr  guifg=#989aa0 guibg=#383b48 gui=NONE
hi VertSplit  guifg=#5c5f69 guibg=#5c5f69 gui=NONE
hi MatchParen  guifg=#ffaa00 guibg=NONE gui=NONE
hi StatusLine  guifg=#f8f8f8 guibg=#5c5f69 gui=bold
hi StatusLineNC  guifg=#f8f8f8 guibg=#5c5f69 gui=NONE
hi Pmenu  guifg=#efe900 guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#917834 gui=NONE
hi IncSearch  guifg=NONE guibg=#785a49 gui=NONE
hi Search  guifg=NONE guibg=#785a49 gui=NONE
hi Directory  guifg=#ff3a83 guibg=NONE gui=NONE
hi Folded  guifg=#1e9ae0 guibg=#383b48 gui=NONE

hi Normal  guifg=#f8f8f8 guibg=#383b48 gui=NONE
hi Boolean  guifg=#ff3a83 guibg=NONE gui=NONE
hi Character  guifg=#ff3a83 guibg=NONE gui=NONE
hi Comment  guifg=#1e9ae0 guibg=NONE gui=italic
hi Conditional  guifg=#ffaa00 guibg=NONE gui=NONE
hi Constant  guifg=#ff3a83 guibg=NONE gui=NONE
hi Define  guifg=#ffaa00 guibg=NONE gui=NONE
hi ErrorMsg  guifg=#f8f8f8 guibg=#ae2e1c gui=NONE
hi WarningMsg  guifg=#f8f8f8 guibg=#ae2e1c gui=NONE
hi Float  guifg=#ff3a83 guibg=NONE gui=NONE
hi Function  guifg=#efe900 guibg=NONE gui=NONE
hi Identifier  guifg=#f6f080 guibg=NONE gui=NONE
hi Keyword  guifg=#ffaa00 guibg=NONE gui=NONE
hi Label  guifg=#55e439 guibg=NONE gui=NONE
hi NonText  guifg=#6a6c76 guibg=#282a33 gui=NONE
hi Number  guifg=#ff3a83 guibg=NONE gui=NONE
hi Operator  guifg=#ffaa00 guibg=NONE gui=NONE
hi PreProc  guifg=#ffaa00 guibg=NONE gui=NONE
hi Special  guifg=#f8f8f8 guibg=NONE gui=NONE
hi SpecialKey  guifg=#6a6c76 guibg=#282a33 gui=NONE
hi Statement  guifg=#ffaa00 guibg=NONE gui=NONE
hi StorageClass  guifg=#f6f080 guibg=NONE gui=NONE
hi String  guifg=#55e439 guibg=NONE gui=NONE
hi Tag  guifg=#efe900 guibg=NONE gui=NONE
hi Title  guifg=#f8f8f8 guibg=NONE gui=bold
hi Todo  guifg=#1e9ae0 guibg=NONE gui=inverse,bold,italic
hi Type  guifg=#efe900 guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#ffaa00 guibg=NONE gui=NONE
hi rubyFunction  guifg=#efe900 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=#ff3a83 guibg=NONE gui=NONE
hi rubyConstant  guifg=#9df39f guibg=NONE gui=NONE
hi rubyStringDelimiter  guifg=#55e439 guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=#fb9a4b guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#fb9a4b guibg=NONE gui=NONE
hi rubyInclude  guifg=#ffaa00 guibg=NONE gui=NONE
hi rubyGlobalVariable  guifg=#fb9a4b guibg=NONE gui=NONE
hi rubyRegexp  guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#ffb454 guibg=NONE gui=NONE
hi rubyEscape  guifg=#ff3a83 guibg=NONE gui=NONE
hi rubyControl  guifg=#ffaa00 guibg=NONE gui=NONE
hi rubyClassVariable  guifg=#fb9a4b guibg=NONE gui=NONE
hi rubyOperator  guifg=#ffaa00 guibg=NONE gui=NONE
hi rubyException  guifg=#ffaa00 guibg=NONE gui=NONE
hi rubyPseudoVariable  guifg=#fb9a4b guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=#9df39f guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod  guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRailsARMethod  guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRailsRenderMethod  guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRailsMethod  guifg=#ffb454 guibg=NONE gui=NONE
hi erubyDelimiter  guifg=NONE guibg=NONE gui=NONE
hi erubyComment  guifg=#1e9ae0 guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#ffb454 guibg=NONE gui=NONE
hi htmlTag  guifg=#9effff guibg=NONE gui=NONE
hi htmlEndTag  guifg=#9effff guibg=NONE gui=NONE
hi htmlTagName  guifg=#9effff guibg=NONE gui=NONE
hi htmlArg  guifg=#9effff guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#ff3a83 guibg=NONE gui=NONE
hi javaScriptFunction  guifg=#f6f080 guibg=NONE gui=NONE
hi javaScriptRailsFunction  guifg=#ffb454 guibg=NONE gui=NONE
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=#efe900 guibg=NONE gui=NONE
hi yamlAnchor  guifg=#fb9a4b guibg=NONE gui=NONE
hi yamlAlias  guifg=#fb9a4b guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#55e439 guibg=NONE gui=NONE
hi cssURL  guifg=#fb9a4b guibg=NONE gui=NONE
hi cssFunctionName  guifg=#ffb454 guibg=NONE gui=NONE
hi cssColor  guifg=#ff3a83 guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=#efe900 guibg=NONE gui=NONE
hi cssClassName  guifg=#efe900 guibg=NONE gui=NONE
hi cssValueLength  guifg=#ff3a83 guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#eb939a guibg=NONE gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE

