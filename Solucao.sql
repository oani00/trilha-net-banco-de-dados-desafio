--https://github.com/oani00/trilha-net-banco-de-dados-desafio
--1
select nome, Ano from Filmes

--2

select nome, Ano, Duracao from Filmes order by  Ano asc


--3

select nome, Ano, Duracao from Filmes where Nome LIKE 'De Volta para o Futuro'

--4
select nome, Ano, Duracao from Filmes where Ano = 1997

--5

select nome, Ano, Duracao from Filmes where Ano > 2000

--6

select nome, Ano, Duracao from Filmes where Duracao > 100 AND Duracao < 150 order by Duracao asc


--7

select Ano, COUNT(*) Quantidade from Filmes group by Ano order by Quantidade desc

--8

select id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'

--9

select id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome

--10

select  Nome, Genero from FilmesGenero join Filmes on Filmes.Id = FilmesGenero.IdFilme join Generos on Generos.Id = FilmesGenero.IdGenero

--11

select  Nome, Genero from FilmesGenero join Filmes on Filmes.Id = FilmesGenero.IdFilme join Generos on Generos.Id = FilmesGenero.IdGenero where Genero = 'Mistério'

--12

select Nome, PrimeiroNome, UltimoNome, Papel from 	Atores 	join ElencoFilme   on ElencoFilme.IdAtor = Atores.Id	join Filmes		   on Filmes.Id = ElencoFilme.IdFilme
	