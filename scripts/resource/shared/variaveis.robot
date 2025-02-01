*** Variables ***
${URL}  https://www.adset.com.br/Integrador/Home/Index

## Variáveis da página de inclusão de veículos

${Menu_Incluir}    //h3[contains(.,'Incluir')]

${Placa_Veiculo}   //input[@name='Placa']

${Campo_Quilometragem}    xpath=//input[@data-val-number='O campo Quilometragem deve ser um número.']

${Campo_Valor}    xpath=//input[contains(@data-val-number,'O campo Valor do Veículo deve ser um número.')]

${Botao_confirmar}    xpath=//button[contains(@type,'submit')]

${Mensagem_Erro}    xpath=//li[contains(.,'Placa do Veículo : Preenchimento obrigatório.')]  

## Variáveis da página de inclusão de veículos com dados vazios.

${Placa_Veiculo_Vazio}    //input[@name='Placa']

${Campo_Quilometragem_Vazio}    xpath=//input[@data-val-number='O campo Quilometragem deve ser um número.']

${Campo_Valor_Vazio}    xpath=//input[contains(@data-val-number,'O campo Valor do Veículo deve ser um número.')]