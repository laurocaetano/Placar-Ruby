require 'test/unit'
require 'classe'

class ClasseTeste < Test::Unit::TestCase

	def setup
		@classe = Classe.new(4)
	end

	def test_a_classe_deve_conter_entre_um_e_cem_alunos
		assert(@classe.contem_entre_um_e_cem_alunos?)
	end

end