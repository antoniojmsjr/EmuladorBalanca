![Maintained YES](https://img.shields.io/badge/Maintained%3F-yes-green.svg?style=flat-square&color=important)
![Memory Leak Verified YES](https://img.shields.io/badge/Memory%20Leak%20Verified%3F-yes-green.svg?style=flat-square&color=important)
![Release](https://img.shields.io/github/v/release/antoniojmsjr/EmuladorBalanca?label=Latest%20release&style=flat-square&color=important)
![Stars](https://img.shields.io/github/stars/antoniojmsjr/EmuladorBalanca.svg?style=flat-square)
![Forks](https://img.shields.io/github/forks/antoniojmsjr/EmuladorBalanca.svg?style=flat-square)
![Issues](https://img.shields.io/github/issues/antoniojmsjr/EmuladorBalanca.svg?style=flat-square&color=blue)</br>
![Compatibility](https://img.shields.io/badge/Compatibility-VCL,%20Firemonkey-3db36a?style=flat-square)
![Delphi Supported Versions](https://img.shields.io/badge/Delphi%20Supported%20Versions-Seattle%20and%20higher-3db36a?style=flat-square)

# Emulador de Balança

O **Emulador de Balança** é uma ferramenta desenvolvida para simular o funcionamento de uma balança eletrônica, permitindo testes e validações de sistemas que se comunicam via interface serial (RS-232).

Através da utilização do [Null-modem Emulator (com0com)](https://sourceforge.net/projects/com0com
), o emulador estabelece uma comunicação virtual entre o sistema de ponto de venda (PDV) ou outro aplicativo e a balança simulada, **eliminando** a necessidade de hardware físico durante o desenvolvimento e homologação.

O emulador reproduz os protocolos de comunicação típicos das balanças comerciais, respondendo a comandos de solicitação de peso e, opcionalmente, simulando condições como estabilidade de peso, ausência de peso ou erros de leitura. É possível configurar manualmente o peso a ser retornado, permitindo a simulação de diferentes cenários operacionais.

#### Recursos:

* Simulação dos protocolos Filizola e Toledo.
* Comunicação serial via portas virtuais (Null-modem).
* Simulação de leitura de peso em tempo real.
* Configuração manual do valor de peso.
* Emulação de estados como peso instável, balança fora de serviço ou sobrecarga.
* Compatível com os principais protocolos de balanças comerciais (pode ser adaptável conforme o modelo simulado).
* Ferramenta essencial para desenvolvimento, testes e treinamento, sem a dependência de equipamentos físicos.

**Nota:** Este emulador de balança foi desenvolvido com base no funcionamento do **Emulador de Balança Serial** disponibilizado pelo projeto [**ACBr** (Automação Comercial Brasil)](https://www.projetoacbr.com.br/forum/topic/48756-emulador-de-balan%C3%A7a-toledo/). A ferramenta do ACBr serviu como referência para a estrutura de comunicação serial, protocolo de transmissão e simulação de resposta da balança. O objetivo foi criar uma versão adaptada de uma balança de conferência ou balança de checkout, mantendo a compatibilidade com os padrões utilizados no mercado.

</br>
</br>
<p align="center">
  <a href="https://github.com/user-attachments/assets/e2993dfb-2e70-4151-adba-12d2f03de163">
    <img alt="IPGeolocation" height="593" width="536" src="https://github.com/user-attachments/assets/e2993dfb-2e70-4151-adba-12d2f03de163">
  </a>
</p>
</br>

## :warning: Licença
`Emulador de Balança` is free and open-source software licensed under the [![License](https://img.shields.io/badge/license-Apache%202-blue.svg)](https://github.com/antoniojmsjr/EmuladorBalanca/blob/master/LICENSE)
