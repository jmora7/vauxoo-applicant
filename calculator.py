
class CalculatorClass(object):
    
    def sum(self, num_list):
        
        acum=0
        for i in xrange(0,len(num_list)):
			acum+=num_list[i]
			
        return acum
