time = /(?:\s|^)
(  (?: as \s+ (?: (?:[0-1]?[0-9]) | (?:2[0-4]) )(?: :[0-5][0-9])?) | (?: [0-9]+ \s+ (?:horas?|minutos?) )|(?: (?:[0-1][0-9]) | (?:2[0-4]))  (?: :[0-5][0-9])?  
)(?:(?!(?:\s|$|\,|\.)).)*
/sxi

date = /(?:\s|^)
((?: hoje|amanha|depois\s de\s amanha|antes\s de\s ontem )|
(?: (?:(?:[0-2]?[0-9])|(?:3[0-1]))  \/  (?:[0]?[0-1]|[0]?[3-9]|[1]?[0-2])  \/  [0-9][0-9](?:[0-9][0-9])? ) |
(?: (?:(?:[0-2]?[0-8]))  \/  (?:[0]?[2])  \/  [0-9][0-9](?:[0-9][0-9])? ) |
(?: (?:(?:[0-2]?[0-8])) \s (?:de\s)? (?:fevereiro)) |
(?: (?:(?:[0-2]?[0-9])|(?:3[0-1])) \s (?:de\s)? (?:janeiro|marco|abril|junho|julho|agosto|setembro|outubro|novembro|dezembro)) 
)(?:(?!(?:\s|$|\,|\.)).)*
/sxi


hash = /(?:\s|^)
((?:  \#
    [a-z0-9]+))
(?:(?!(?:\s|$|\,|\.)).)*
/sxi

action = /(?:\s|^)
    ((?:agendar|marcar|ligar|escrever|anotar|fazer|reuniao))
(?:(?!(?:\s|$|\,|\.)).)*
/sxi


name = /(?:\s|^)
((?: \b[A-Z][a-z]+\b))
(?:(?!(?:\s|$|\,|\.)).)*
/sxi


vars = []
exemplo = "agendar com Jose reuniao as 10:30 horas depois de amanha #trabalho"

dia = exemplo.scan(date)
hora = exemplo.scan(time)
nome = exemplo.scan(name)
tag = exemplo.scan(hash)
acao = exemplo.scan(action)

vars.append("\nNome: ", nome)
vars.append("\nDia: ", dia)
vars.append("\nHora: ", hora)
vars.append("\nAções: ", acao)

vars.append("\nHashTag: ", tag)

#vars.append(exemplo.scan(name))

puts vars
