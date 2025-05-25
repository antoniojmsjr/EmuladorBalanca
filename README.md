![Maintained YES](https://img.shields.io/badge/Maintained%3F-yes-green.svg?style=flat-square&color=important)
![Memory Leak Verified YES](https://img.shields.io/badge/Memory%20Leak%20Verified%3F-yes-green.svg?style=flat-square&color=important)
![Release](https://img.shields.io/github/v/release/antoniojmsjr/BuscaCEP?label=Latest%20release&style=flat-square&color=important)
![Stars](https://img.shields.io/github/stars/antoniojmsjr/BuscaCEP.svg?style=flat-square)
![Forks](https://img.shields.io/github/forks/antoniojmsjr/BuscaCEP.svg?style=flat-square)
![Issues](https://img.shields.io/github/issues/antoniojmsjr/BuscaCEP.svg?style=flat-square&color=blue)</br>
![Compatibility](https://img.shields.io/badge/Compatibility-VCL,%20Firemonkey-3db36a?style=flat-square)
![Delphi Supported Versions](https://img.shields.io/badge/Delphi%20Supported%20Versions-Seattle%20and%20higher-3db36a?style=flat-square)

# Emulador de Balança

O **Emulador de Balança** é uma ferramenta desenvolvida para simular o funcionamento de uma balança eletrônica, permitindo testes e validações de sistemas que se comunicam via interface serial (RS-232).

Através da utilização do [Null-modem Emulator (com0com)](https://sourceforge.net/projects/com0com
), o emulador estabelece uma comunicação virtual entre o sistema de ponto de venda (PDV) ou outro aplicativo e a balança simulada, **eliminando** a necessidade de hardware físico durante o desenvolvimento e homologação.

O emulador reproduz os protocolos de comunicação típicos das balanças comerciais, respondendo a comandos de solicitação de peso e, opcionalmente, simulando condições como estabilidade de peso, ausência de peso ou erros de leitura. É possível configurar manualmente o peso a ser retornado, permitindo a simulação de diferentes cenários operacionais.
