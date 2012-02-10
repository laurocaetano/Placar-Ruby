class Classe

	def initialize(quantidade_de_alunos)
		@quantidade_de_alunos = quantidade_de_alunos		
	end

	def contem_entre_um_e_cem_alunos?
		@quantidade_de_alunos > 0 && @quantidade_de_alunos < 100
	end
		
end