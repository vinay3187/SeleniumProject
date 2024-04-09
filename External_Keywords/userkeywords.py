import os
def create_folder(foldername):
    os.mkdir("C://Users/Vinay/Desktop/"+foldername)
def create_subfolder(subfoldername):
    os.mkdir("C://Users/Vinay/Desktop/Test/"+subfoldername)

def concatenate_two_value(val1, val2):
    val3 = val1 + " " + val2
    return val3