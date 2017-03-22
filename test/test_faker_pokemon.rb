require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerPokemon < Test::Unit::TestCase
  def setup
    @tester = Faker::Pokemon
  end

  def test_name
    assert @tester.name.match(/\w+/)
  end

  def test_name_kanto
    assert @tester.name('Kanto').match(/\w+/)
  end

  def test_name_johto
    assert @tester.name('Johto').match(/\w+/)
  end

  def test_name_hoenn
    assert @tester.name('Hoenn').match(/\w+/)
  end

  def test_name_sinnoh
    assert @tester.name('Sinnoh').match(/\w+/)
  end

  def test_name_unova
    assert @tester.name('Unova').match(/\w+/)
  end

  def test_name_kalos
    assert @tester.name('Kalos').match(/\w+/)
  end

  def test_name_alola
    assert @tester.name('Alola').match(/\w+/)
  end

  def test_location
    assert @tester.location.match(/\w+/)
  end

  def test_item
    assert @tester.item.match(/\w+/)
  end

  def test_move
    assert @tester.move.match(/\w+/)
  end

  def test_type
    assert @tester.type.match(/\w+/)
  end

end
