function [T1_DELTA, T2_DELTA] = dctNeuralNetwork(inputVector, Theta2, Theta2, init_w, learn, alpha)

# first see if this is an initialze run
  noOfInputNeurons = size(inputVector, 1);  % row Size Of InputVector
  
  noOfHiddenNeurons = noOfInputNeurons;
  noOfOutputNeurons = 1;
  
  if (init_w == 1)
     Theta1 = rand(noOfHiddenNeurons, noOfInputNeurons + 1);  % THETA1 = [(First layer neuron size + single bias input),  hidden layer neuron size]
     Theta2 = rand(noOfOutputNeurons, noOfHiddenNeurons + 1); % THETA2 = [(hidden layer neuron size + single bias input),  output layer neuron size]
  endif
  
  # run through the training set
  m = 0;
 
  # accumulators for the partial derivatives
  # You need to return the following variables correctly 
  J = 0;
  T1_DELTA = zeros(size(Theta1));
  T2_DELTA = zeros(size(Theta2));
  
  A1 = [1; inputVector];
  Z2 = Theta1 * A1;
  A2 =  sigmoid(Z2);
  A1 = [1; A2];

  Z3 = Theta2 * A2;
  A3 = sigmoid(Z3);
  H = A3;
  
  % calculte penalty
  p = sum(sum(Theta1(:, 2:end).^2, 2))+sum(sum(Theta2(:, 2:end).^2, 2));

  
endfunction