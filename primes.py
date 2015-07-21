

class PrimeClass(object):

    def is_prime(self, num_int):
        
        r=True
        i=2
        while r and i <= num_int/2 :
			if num_int%i == 0 :
				r=False
			i=i+1
        return r
