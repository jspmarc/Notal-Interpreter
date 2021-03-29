" Vim syntax file
" Language: Notasi algoritmik ITB (ITB's Algorithmic Notation)
" Maintainer: Josep Marcello
" Latest Revision: 2020-08-31

if exists("b:current_syntax")
    finish
endif

" Matches
syn match stringSalah '[^'][^']\+' contained

syn match cabangDepend 'depend on'

syn match karakterLain '[RETURN|EOL|SPACE]' contained

" Bilangan
"syn match bil '[-+]*\d\+[.Ee]*\d*'
"syn match bil '[-+]*\d\+[.]*\d*[Ee]*\d*'

syn match operatorRelasi '<=*'
syn match operatorRelasi '≤'
syn match operatorRelasi '>=*'
syn match operatorRelasi '≥'
syn match operatorRelasi '='
syn match operatorRelasi '!='
syn match operatorRelasi '≠'

syn match operatorArit '*'
syn match operatorArit '+'
syn match operatorArit '-'
syn match operatorArit '/'

syn match pengisian '<-'
syn match pengisian '←'

syn match return '->'
syn match return '→'

syn match operatorString "•"
syn match operatorString "o"
syn match operatorString "&"

" Regions
syn region komentar start='{' end='}'
syn region string start='"' end='"'
syn region karakter start='\'' end='\'' contains=stringSalah,karakterLain

" Keywords
syn keyword IO input output

syn keyword tipeData real integer boolean character string

syn keyword percabangan if then else nextgroup=cabangDepend

syn keyword blokProgram KAMUS LOKAL GLOBAL
syn keyword blokProgram ALGORITMA PROGRAM

syn keyword pengulangan iterate stop while do
syn keyword pengulangan repeat times until traversal

syn keyword operatorInteger div mod abs

syn keyword operatorLogika and or xor not EQ nEQ

syn keyword keywordLainnya function procedure constant of array type SEQFILE use
syn keyword keywordLainnya USE

syn keyword KeywordBool true false

hi def link IO              Function
hi def link tipeData        Typedef
hi def link keywordLainnya  Statement
hi def link stringSalah     Error
hi def link percabangan     Conditional
hi def link cabangDepend    Conditional
hi def link pengulangan     Repeat
hi def link blokProgram     Statement
hi def link return          Statement
hi def link komentar        Comment
hi def link string          String
hi def link karakter        Character
hi def link karakterLain    Character
hi def link percabangan     Underline
hi def link bil             Constant
hi def link keywordBool     constant
hi def link pengisian       Operator
hi def link operatorInteger Operator
hi def link operatorBil     Operator
hi def link operatorRelasi  Operator
hi def link operatorLogika  Operator
hi def link operatorArit    Operator
