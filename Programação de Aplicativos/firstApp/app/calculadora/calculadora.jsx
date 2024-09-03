import React, { useState } from 'react';
import { View, Text, StyleSheet, Pressable } from 'react-native';

const Calculator = () => {
  const [input, setInput] = useState('');
  const [result, setResult] = useState('');

  const handlePress = (value) => {
    setInput((prevInput) => prevInput + value);
  };

  const handleClear = () => {
    setInput('');
    setResult('');
  };

  const calculateResult = () => {
    try {
      setResult(eval(input).toString());
    } catch (error) {
      setResult('Erro');
    }
  };

  return (
    <View style={styles.container}>
      <Text style={styles.resultText}>{result}</Text>
      <Text style={styles.inputText}>{input}</Text>
      
      <View style={styles.row}>
        <Pressable style={styles.button} onPress={() => handlePress('7')}>
          <Text style={styles.buttonText}>7</Text>
        </Pressable>
        <Pressable style={styles.button} onPress={() => handlePress('8')}>
          <Text style={styles.buttonText}>8</Text>
        </Pressable>
        <Pressable style={styles.button} onPress={() => handlePress('9')}>
          <Text style={styles.buttonText}>9</Text>
        </Pressable>
        <Pressable style={[styles.button, styles.operatorButton]} onPress={() => handlePress('*')}>
          <Text style={styles.buttonText}>×</Text>
        </Pressable>
      </View>

      <View style={styles.row}>
        <Pressable style={styles.button} onPress={() => handlePress('4')}>
          <Text style={styles.buttonText}>4</Text>
        </Pressable>
        <Pressable style={styles.button} onPress={() => handlePress('5')}>
          <Text style={styles.buttonText}>5</Text>
        </Pressable>
        <Pressable style={styles.button} onPress={() => handlePress('6')}>
          <Text style={styles.buttonText}>6</Text>
        </Pressable>
        <Pressable style={[styles.button, styles.operatorButton]} onPress={() => handlePress('-')}>
          <Text style={styles.buttonText}>−</Text>
        </Pressable>
      </View>

      <View style={styles.row}>
        <Pressable style={styles.button} onPress={() => handlePress('1')}>
          <Text style={styles.buttonText}>1</Text>
        </Pressable>
        <Pressable style={styles.button} onPress={() => handlePress('2')}>
          <Text style={styles.buttonText}>2</Text>
        </Pressable>
        <Pressable style={styles.button} onPress={() => handlePress('3')}>
          <Text style={styles.buttonText}>3</Text>
        </Pressable>
        <Pressable style={[styles.button, styles.operatorButton]} onPress={() => handlePress('+')}>
          <Text style={styles.buttonText}>+</Text>
        </Pressable>
      </View>

      <View style={styles.row}>
        <Pressable style={[styles.button, styles.clearButton]} onPress={handleClear}>
          <Text style={styles.buttonText}>C</Text>
        </Pressable>
        <Pressable style={styles.button} onPress={() => handlePress('0')}>
          <Text style={styles.buttonText}>0</Text>
        </Pressable>
        <Pressable style={[styles.button, styles.operatorButton]} onPress={calculateResult}>
          <Text style={styles.buttonText}>=</Text>
        </Pressable>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    backgroundColor: '#f0f0f0',
    padding: 20,
  },
  resultText: {
    fontSize: 32,
    textAlign: 'right',
    marginBottom: 10,
    color: '#333',
  },
  inputText: {
    fontSize: 24,
    textAlign: 'right',
    marginBottom: 20,
    color: '#666',
  },
  row: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    marginBottom: 20,
  },
  button: {
    backgroundColor: '#fff',
    padding: 20,
    borderRadius: 10,
    flex: 1,
    alignItems: 'center',
    marginHorizontal: 5,
    boxShadow: '0px 2px 3px rgba(0, 0, 0, 0.3)', // Substitui shadow*
    elevation: 3,
  },
  operatorButton: {
    backgroundColor: '#666'
  },
  clearButton: {
    backgroundColor: '#d4d4d2',
  },
  buttonText: {
    fontSize: 24,
    color: '#333',
  },
});

export default Calculator;
