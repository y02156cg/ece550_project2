# project Checkpoint 2
Name: Chen Gong
NetID: cg387

# Overview
Aim of the project checkpoint 2 is to design a full-function ALU, with the functions of addition, subtraction, bitwise AND OR, 32-bit barrel shifer with SLL and SRA. Additionally, if operand A is less or not equal to operand B are also tested. Furthermore, overflow flag for add or subtract operation is also set to indicate if overflow happes during the add/sub operation.

# Bitwise AND & OR Design Description
General principle for these two modules design is to conduct bit-by-bit or and and comparisions between each bit in operand A and B. Therefore, 32 or gates and and gates are used separetely to realize the bit-by-bit comparision. Result of each bit is stored in the same bit position in the result variable.

# Logical Left-shift & Arithmetic right-shift Design Description
In this project, the control shift amount is stored in a 5 bit variable. Thus, in binary senario, the operand can be shifted up to 32 bits. And the shift amount is 5 bit value, so, in total 5*32 32-bit 2-to-1 multiplexers are used for each shift operation. 

Firstly,for the SLL, there are five layers for the circuit design. In each layer, if its corresponding shift amount has a binary value of 1, then the value from last layer will have to move left the corresponding bit amount and supplement with the corresponding bit amount 0s. For example, if position 2 of the shift amount is 1, then the input to layer 3 will the output from layer 1 left shift 2 bits and supplement 2 0s. Generally, output from last layer should be the input to the next layer, and the output from the last layer is the final output result. If the shift amount in the specific position is 0, then no shift occurs and output from last layer keeps for this layer.


For SRA, the operation is almost the same except for the MSB of the data operand needs to be kept and the data is shifted right. The MSB should be kept to ensure that the operand still has the same sign as the original operand. Therefore, in contrast to SLL, which supplements to the shifted amount are 0s, SRA supplements are 1s or 0s depending on its MSB. If MSB is 1, then supplements are 1s, and vice versa. And the rest layers constructions are the same as the SLL.

# isLessThan & isNotEqual Design Description
Design for telling if operand A is less than B or not is constructed from the rule that if overflow has the same value as the MSB of the subtracting result, then A is not less than B, and vice versa. When overflow is 1, if the MSB is 1, then it means that 2 positive values adding together resulting a negative value. This is adding operation not the subtracting operation that needs to be discussed in this project. Next, if MSB is 0, this means that two negatives adding together and get a positive result. Thus, for subtraction, A needs to be negative, and B should be positive. So, in this case, A is always less than B. When overflow is not happening, A-B resulting a MSB of 1, then A is less than B. If MSB is 0, then A is larger.

For not equal operation, the construction is to use 31 or gate to tell if the subtracting result has all of its bits 0. If all bits are 0, then A equals to B, isLessThan will be equal to 0. If there is any 1, then A is not equal to B, so isLessThan is 1.
