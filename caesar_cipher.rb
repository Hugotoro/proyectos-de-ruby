#asignacion

def caesar(palabra, num)
  alfabeto = ('a'..'z').to_a
  arreglo_cifrado = []
  word = palabra
  # alfabeto.length # son 27, pero lo voy a tratar de 0 a 25
  word .chars.map do |letra|
    if letra == ' '
      arreglo_cifrado.push(' ')
    else
    numero_restado = alfabeto.index(letra) - num
    arreglo_cifrado.push(alfabeto[numero_restado])
    end

  end
  nueva_palabra = arreglo_cifrado.join('')
  nueva_palabra.capitalize
end

puts caesar("hugo hola", 23)
