# In Vivo Imaging and Physiological Modelling - BMED 360 Spring 2021


## Beginners guide to Python and friends

Python is a dynamic general-purpose programming language, currently on its third major version: Python 3.8. It enjoys widespread adoption in the scientific community, and it is the *de facto* standard computational environment for data science and artificial intelligence, and partly also for computational biomedicine.

Excerpts from Tim J. Stevens: _The Python Programming Language_ in : A. Hofmann and S. Clokie: [Wilson and Walker's Principles and Techniques of Biochemistry and Molecular Biology](https://www.cambridge.org/core/books/wilson-and-walkers-principles-and-techniques-of-biochemistry-and-molecular-biology/2159004E019DDD87C0A97EE8DB72B79F), 8th edition, Cambridge University Press, 2018.


> ... A biologist will often turn to computer programming in situations where the amount or the complexity of data is too much to be senisibly hanled by spreadsheets, and where no other, more specialized, software exists. Often only a relative simple program needs to be written to get something useful from biological data, which would otherwise not be available.
>
> For biologists, the task of writing a computer program can sometimes seem like a significant barrier, but once the basic programming skills are learned then many possibilities are enabled. [Python](https://www.python.org) is one of the most popular programming languages and is becoming an increasingly attractive options for the biologist. It is a high-level, general-purpose language that is well supported and relatively easy to learn. Also, it has a large number of eternal modules, including many related to mathematics, science and biology. Python is easy to install and runs on almost all kinds of computer system. Presently, Python 3 is the _de facto_ standard.
>
> Even if you don't intend to use Python in the long-run or for all programming work [in some cases [R](https://www.r-project.org) could be an alternative], it nonetheless serves as a good starting point to learn some of the major principles of many modern computing languages.
> 

----------------------

- [00-begin-python-programming-language.ipynb](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab0-beginners-guide/00-begin-python-programming-language.ipynb) <a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab0-beginners-guide/00-begin-python-programming-language.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>

#### Learning outcome

**Be able to read and construct code related to the core Python language concepts:**

- Primitive **datatypes** and **operators** (`integers` and `float` numbers, `+`, `-`, `*`, `/`, `%`, `=`, `==`, `!=`, `<`, `>`, `<=`, `>=`, `&`, `|` operators)
- Collections
  - **Lists** (adding elements, slicing, list comprehension,  ...)
  - **Dictionaries** (key-value maps, dictionary comprehension, ... )
  - Sets
  - **Looping** over collections
- **Branching** and **control** (`if  - elif - else:`,  `for i, x in enumerate(list):`, ... )
- **Functions** (`def function_name(parameter1, parameter2, ...parameter_n)` and `return outp1, outp2, ..., outp_m`)

To further practice your skills in Python check and register for https://practice.datacamp.com/p <br>(https://www.datacamp.com/onboarding/learn?technology=python)

------------------


- [01-jupyter-notebook-markdown-basics.ipynb](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab0-beginners-guide/01-jupyter-notebook-markdown-basics.ipynb) <a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab0-beginners-guide/01-jupyter-notebook-markdown-basics.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>


-------------------

- [02-begin-pandas-basics.ipynb](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab0-beginners-guide/02-begin-pandas-basics.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab0-beginners-guide/02-begin-pandas-basics.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>

-------------------

- [03-begin-image_processing_basics.ipynb](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab0-beginners-guide/03-begin-image_processing_basics.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab0-beginners-guide/03-begin-image_processing_basics.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>


On COLAB:
```bash
!pip install nipype

from nipype.interfaces.dcm2nii import Dcm2niix
 
converter = Dcm2niix()
converter.inputs.source_dir = os.path.abspath(where_the_data_locate)
converter.inputs.output_dir = os.path.abspath(where_you_want_put_the_data_into)
converter.inputs.single_file = True
converter.cmdline
temp = converter.run()
``` 
------

