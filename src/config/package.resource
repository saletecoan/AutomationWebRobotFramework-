*** Settings ***
Documentation   Dependências do Projeto

#Dependencias
Library     SeleniumLibrary
Library     FakerLibrary    locale=pt_br


#Keyword
Resource    setup.robot
Resource     ../auto/keywords/home_kws.robot
Resource     ../auto/keywords/login_kws.robot
Resource     ../auto/keywords/minha_conta_kws.robot
Resource     ../auto/keywords/comum_kws.robot
Resource     ../auto/keywords/cadastro_kws.robot

#Elements
Resource     ../auto/elements/home_ets.resource
Resource     ../auto/elements/login_ets.resource
Resource     ../auto/elements/minha_conta_ets.resource

#Dados
Variables    ../auto/data/dados.yaml
Variables    ../auto/data/mensagens.yaml

#Configuração
Variables    setup.yaml