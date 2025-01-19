#!/usr/bin/env python3
import pyperclip as pp 
import sys

class copy:

    error = '''\n
Input Type Error:
-----------------
Input Formate :
    F-clip Filename

Input Example:
    F-clip data.txt

Show Help:
    F-clip --help
    '''

    def __init__(self):
        try:
            self.filename = sys.argv[1] if len(sys.argv) <=2 else None
        except IndexError:
            raise ValueError(self.error)
        
    def show_help(self):
        print(self.error)
    
    
    def clear(self):
        try:
            pp.copy('')
            print('Clear Done!')
        except Exception as e:
            print(e)


    def read_file(self): # main program
        try:
            
            if self.filename:
                file = self.filename
                with open(file,'r') as f:
                    file_data = f.read()
                    try:
                        copy_data = pp.copy(file_data)
                        return 1
                    except Exception as e:
                        print(e)
                    
                    


        except FileNotFoundError:
            raise FileNotFoundError(f'{self.filename} Not found Please Try Again.')
        except:
            raise ValueError('Unknown Error .. \nContact With Developer.')

call_function = copy()

if sys.argv[1] == '--help':
    call_function.show_help()

elif sys.argv[1] == '-clr' or sys.argv[1] == '--clear':
    call_function.clear()

else: 
    value = call_function.read_file()

    if value == 1:
        print('Copy Done!')
    else:
        print('Some problem... contact with developer.')