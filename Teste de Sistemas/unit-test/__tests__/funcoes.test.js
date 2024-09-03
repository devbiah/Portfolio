const { adicionar, subtrair, multiplicar, dividir } = require('../src/funcoes');

test('Adição de dois números', () => {
  expect(adicionar(2, 3)).toBe(5);
});

test('Subtração de dois números', () => {
  expect(subtrair(5, 3)).toBe(2);
});

test('Multiplicação de dois números', () => {
  expect(multiplicar(4, 3)).toBe(12);
});

test('Divisão de dois números', () => {
  expect(dividir(10, 2)).toBe(5);
});

test('Divisão por zero deve lançar erro', () => {
  expect(() => dividir(10, 0)).toThrow("Divisão por zero não é permitida");
});
