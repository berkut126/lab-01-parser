Usage example of new lab creating

.. code:: shell

    $ export LAB_NUMBER=xx
    $ export LAB_KEYWORD=yyyyyyy
    $ export LAB_NAME=lab-${LAB_NUMBER}-${LAB_KEYWORD}
    $ git clone https://github.com/bmstu-iu8-cpp-sem-3/lab-xx-template ${LAB_NAME}
    $ cd ${LAB_NAME}
    $ git remote rename origin template
    $ git remote add origin https://github.com/bmstu-iu8-cpp-sem-3/${LAB_NAME}.git
    # 1. remove the unnecessary directories
    # 2. add the necessary files
    $ git add .
    $ git commit -m"prepared ${LAB_NAME}"
    $ git push origin master
