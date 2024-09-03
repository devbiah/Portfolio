const isEven = require('./index')

test('este teste deve verificar se um numero é par', () => {
    const entrada = 2
    const saida_esperada = true
    expect(isEven(entrada)).toEqual(saida_esperada)
})