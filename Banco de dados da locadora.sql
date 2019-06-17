create database Locadora;

use Locadora;

create table Marca (
MarcaID int key,
Nome varchar(100));
desc Marca;

create table Modelo (
ModeloID int key,
Nome varchar(100));
 desc Modelo;

create table Veiculo (
VeiculoID int key,
Cadastro varchar(50),
Placa char(10));
desc Veiculo;

create table Cor (
CorID int key,
Nome varchar(100));
desc Cor;

create table Clientes (
ClientesID int key,
RG char(13),
CPF char(14),
Estado char(2),
Cidade varchar(50),
CEP char(10));
desc Clientes;

create table Telefone (
TelefoneID int key,
ClientesID int,
numero varchar(20),
foreign key (ClientesID)
references
Clientes(ClientesID));

desc Telefone;

Create table orcamento (
idorcamento int key,
idcliente int,
carros int,
datainicio date,
datatermino date,
valordiaria float(10),
valortotal varchar(10));
desc orcamento;

create table entrada (
identrada int key,
idorcamento int,
data date,
valor float(10),
foreign key (idorcamento)
references
orcamento (idorcamento));
desc entrada;

create table caixa (
idcaixa int key,
identrada int,
idsaida int );
desc caixa;

create table saida (
idsaida int key,
motivo varchar(20),
valor float(10));
desc saida;

create table oficina (
idoficina int key,
local varchar(50),
data date,
conserto varchar(20),
valor varchar(20));
desc oficina;