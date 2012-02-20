class Classe

	def initialize(quantidade_de_alunos, alunos)
		@alunos = alunos
		@quantidade_de_alunos = quantidade_de_alunos		
	end

	def contem_entre_um_e_cem_alunos?
		@quantidade_de_alunos > 0 && @quantidade_de_alunos < 100
	end

	def quantidade_de_alunos
		@alunos.size
	end

	def nome_do_aluno_reprovado
		@alunos.sort_by { 
			|aluno| [aluno.quantidade_de_exercicios_resolvidos && aluno.nome]
		}.last.nome
	end

end