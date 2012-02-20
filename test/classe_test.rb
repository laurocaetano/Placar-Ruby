require 'test/unit'
require 'classe'
require 'aluno'

class ClasseTeste < Test::Unit::TestCase

	def setup
		insere_alunos
		@classe = Classe.new(4, @alunos)
	end

	def test_a_classe_deve_conter_entre_um_e_cem_alunos
		assert(@classe.contem_entre_um_e_cem_alunos?)
	end

	def test_a_classe_deve_conter_quatro_alunos
		assert_equal(4, @classe.quantidade_de_alunos)
	end

	def test_o_aluno_reprovado_deve_ser_o_infeliz_reprovado
		assert_equal("infelizreprovado", @classe.nome_do_aluno_reprovado)
	end

	def insere_alunos
		@alunos = Array.new
		@alunos << Aluno.new("Cardonha", 9)
		@alunos << Aluno.new("infelizreprovado", 3)
		@alunos << Aluno.new("Marcel", 9)
		@alunos << Aluno.new("infelizaprovado", 3)
	end

end


