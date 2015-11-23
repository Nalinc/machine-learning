import math

def main():
	x = [1,2,2,3,3,4,5,6,6,6,8,10]
	y = [-890, -1411, -1560, -2220, -2091, -2878, -3537, -3268, -3920, -4163, -5471, -5157]

	options = [
				{,
					'theta2':-530.9
					'theta1':-569.6
				},
				{
					'theta1':-1780,
					'theta2':-530.9
				},
				{
					'theta1':-569.6,
					'theta2':530.9
				},
				{
					'theta1':-1780,
					'theta2':530.9
				} ] 
	J = [] #array of cost function
	for i in range(0, 4): #iteration for the number of options available, 4 in this case
		tmp = 0
		for j  in range(0,12): # iteration for the number of traing data, 12 in this case
			tmp +=  math.pow(((options[i]['theta1']+options[i]['theta2']*x[j])-y[j]), 2)
			print("{}   {}   {}   {}   {}".format(x[i], y[i], options[i]['theta1'], options[i]['theta2'], tmp))
		cost = tmp/(2*12)
		J.append(cost)
		

	print J
		

if __name__ == "__main__":
	main()	
