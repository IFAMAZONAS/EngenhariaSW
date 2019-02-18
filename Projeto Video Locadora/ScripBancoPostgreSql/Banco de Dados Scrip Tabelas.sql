${'/cliente/visualizar?id=' + cliente.id}

<div id="listaDeConvidados" style="width: 100%">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Nome</th>
							<th>Email</th>
							<th>Celular</th>
							<th></th>
							<th></th>
							<th></th>

						</tr>
					</thead>
					<tr>
						<td><span th:text="${cliente.nome}"></span></td>
						<td><span th:text="${cliente.email}"></span></td>
						<td><span th:text="${cliente.foneCelular}"></span></td>

					</tr>

				</table>
</div>