use sakila;


-- JOIN -----------------------
/*
# 1º Para unir duas tabelas é necessário que tenham algo em comum. Esse comum 
é chave que geralmente é a PRIMARY KEY em uma e a FOREIGH KEY em outra;
# ON: parâmetro que irá caraterizar a chave por onde as colunas conversam
em tradução é uma espécie de ONDE
# APLICA O JOIN SEM NENHUM CLASSIFICAO É POR DEFAULT UTILIZAR O INNER JOIN --
*/
-- Consultando tabela que irei unir
select * from customer;
select * from address;

-- Construindo união (JOIN)
select first_name, last_name, address
from customer
join address
on customer.address_id = address.address_id;

-- Ex.: 2
select * from film;
select * from language;

select title as Title, name as Language
from film
join language
on film.language_id = language.language_id;


-- INNER JOIN -----------------------
/*
# Só traz os dados que existem em ambas as tabelas;
*/

select title as Title, name as Language
from film
inner join language
on film.language_id = language.language_id;

-- LEFT JOIN -----------------------
/*
# Olha a tabela da esquerda: ou seja, no contexto do exemplo
acima, ele traria todos os filmes, logo podem ter FILM que não tenham LANGUAGE
--> Sinalizada após o FROM
# TRAZ TODO O CAMPO DA TABELA A ESQUERDA, INDENPENDENTE SE TENHA UM CORRESPONDENTE NA
TABELA A DIREITA.
*/

select title as Title, name as Language
from film
left join language
on film.language_id = language.language_id;

-- RIGHT JOIN -----------------------
/*
# Segue o mesmo racional do LEFT JOIN, mas agora considerando a tabela da direita
ou seja, pegando o contexto do exemplo dado, poderiam ter LANGUAGE sem um FILM;
# TRAZ TODO O CAMPO DA TABELA A DIREITA, INDENPENDENTE SE TENHA UM CORRESPONDENTE NA
TABELA A ESQUERDA.
*/

select title as Title, name as Language
from film
rigth join language
on film.language_id = language.language_id;



-- FULL JOIN -----------------------
/*
# JOIN de muitas tabelas;
*/
select film.title, category.name
from film
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id;







-- CASOS ESPECÍFICOS -----------------------
-- AMBIGUIDADE
/*
# A query abaixo irá trazer um erro intencional de ambiguous (ambuiguidade).
Este erro se deu em função da uma coluna (campo) está presente nas duas tabelas,
sendo ela a store_id. Para corrigir o mesmo será necessário determinar a tabela
de cada uma das colunas;

*/
-- Erro
select * from store;
select * from staff;

select store_id, first_name
from store
join staff
on store.manager_staff_id = staff.id;

-- Correção
select store.store_id, staff.first_name
from store
join staff
on store.manager_staff_id = staff.staff_id;

-- JOIN de muitas tabelas;
/*
# Basicamente queremos buscar uma informação que está vinculada
através de um tabel intermediária. Ou seja, está tabela faz a ponte
entre a FILM e a category.
*/
select film.title, category.name
from film
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id;





