# CInExpress - E-Commerce

- Um site de vendas deseja fazer um banco de dados para cadastro de seus usuários(CPF, Nome, Sexo, dtNascimento, Endereço(Rua, Bairro, CEP)) que podem ser tanto Comprador quanto Vendedor.

- Um site de vendas deseja fazer um banco de dados para cadastro de seus usuários(CPF, Nome, Sexo, dtNascimento, Endereço(Rua, Bairro, CEP)) que podem ser tanto Comprador quanto Vendedor.

- Um comprador pode ter apenas um Carrinho e cada carrinho é tido por apenas um vendedor.

- O vendedor pode realizar a compra do seu carrinho e cada Compra(ID, data/hora, valor) pode ter mais de uma promoção. Ao fazer uma compra o preço dos produtos é somado e essa soma é colocada no atributo valor de compra.
 
- Uma compra pode ter mais de uma Promoção(Código, Quantidade, Valor, Período), tal que a cada uso a quantidade de uma uma promoção é decrementada e atingindo o 0 deixa de estar disponível. Cada promoção pode ser tida por mais de uma compra, desde que haja quantidade para tal.

- O carrinho possui uma Lista de Produto(Nome, Quantidade, Valor) e cada produto pode ser possuído por mais de um carrinho de modo que só deixará de estar disponível quando todas suas unidades forem compradas. Cada produto é distinguido por seu Nome.

- O vendedor pode possuir mais de uma loja e cada Loja(Nome) é possuída necessariamente por apenas um vendedor. 
 
- Cada loja pode possuir mais de um produto, mas cada produto é necessariamente de apenas uma loja.
 
- Para adquirir promoções você pode indicar outro usuário para entrar no CInExpress, através de um link de convite. A cada indicação efetivada, é incrementado o atributo nº de indicações do usuário. Quanto mais indicações mais benefícios promocionais o usuário adquire.