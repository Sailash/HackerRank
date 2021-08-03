import re
for _ in range(int(input())):
    card_num = input()
    valid=0
    if re.match(r'^[456]\d{3}(-?\d{4}){3}$',card_num) and \
       not re.search(r'(\d)\1{3,}',''.join(card_num.split('-'))):
       valid=1        
    
    print('Valid' if valid else 'Invalid')
    