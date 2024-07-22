drop database if exists DBPokemon;

create database if not exists DBPokemon;

use DBPokemon;

CREATE TABLE Pokemones(
	pokemonId int not null auto_increment,
    nombrePokemon varchar(40) not null,
	descripcionPokemon text,
    elementoPokemon varchar(40)not null,
    regionOrigen VARCHAR(40)not null,
	
    primary key PK_pokemonId(pokemonId)

);

INSERT INTO Pokemones (nombrePokemon, descripcionPokemon, elementoPokemon,regionOrigen) VALUES
    ('Pikachu', 'Un Pokémon de tipo eléctrico conocido por sus habilidades de generar electricidad.', 'Eléctrico', 'Kanto'),
    ('Charmander', 'Un Pokémon de tipo fuego que tiene una llama en su cola.', 'Fuego', 'Kanto'),
    ('Bulbasaur', 'Un Pokémon de tipo planta/veneno que tiene una planta en su espalda.', 'Planta/Veneno', 'Kanto');
    
select * from Pokemones;