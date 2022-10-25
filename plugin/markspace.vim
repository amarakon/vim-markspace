" First enable showing whitespace and set the characters
set list listchars=tab:│─,multispace:-,lead:–,trail:–,nbsp:·

" Define the match pattern for trailing whitespace
match TrailingWhitespace /\s\+$/

" Only highlight trailing whitespace with error colours when not in insert mode
autocmd InsertEnter * set listchars-=trail:– |
			\highlight link TrailingWhitespace Whitespace
autocmd InsertLeave * set listchars+=trail:– |
			\highlight link TrailingWhitespace Error
