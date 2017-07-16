" airline unicode symbols
if exists(':AirlineToggle')
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  "let g:airline_left_sep = '»'
  "let g:airline_left_sep = '▶'
  "let g:airline_right_sep = '«'
  "let g:airline_right_sep = '◀'
  "let g:airline_symbols.crypt = '🔒'
  "let g:airline_symbols.linenr = '␊'
  "let g:airline_symbols.linenr = '␤'
  "let g:airline_symbols.linenr = '¶'
  "let g:airline_symbols.maxlinenr = '☰'
  "let g:airline_symbols.maxlinenr = ''
  "let g:airline_symbols.branch = '⎇'
  "let g:airline_symbols.paste = 'ρ'
  "let g:airline_symbols.paste = 'Þ'
  "let g:airline_symbols.paste = '∥'
  "let g:airline_symbols.spell = 'Ꞩ'
  "let g:airline_symbols.notexists = '∄'
  "let g:airline_symbols.whitespace = 'Ξ'

   "powerline symbols
  "let g:airline_left_sep = ''
  "let g:airline_left_alt_sep = ''
  "let g:airline_right_sep = ''
  "let g:airline_right_alt_sep = ''
  "let g:airline_symbols.branch = ''
  "let g:airline_symbols.readonly = ''
  "let g:airline_symbols.linenr = ''

   "old vim-powerline symbols
  "let g:airline_left_sep = '⮀'
  "let g:airline_left_alt_sep = '⮁'
  "let g:airline_right_sep = '⮂'
  "let g:airline_right_alt_sep = '⮃'
  "let g:airline_symbols.branch = '⭠'
  "let g:airline_symbols.readonly = '⭤'
  "let g:airline_symbols.linenr = '⭡'
end
