from setuptools import setup, find_packages

setup(
    name='apiverve_shortcodegenerator',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Short Code Generator is a tool for generating short alphanumeric codes. It supports multiple character sets including alphanumeric, alphabetic, numeric, hexadecimal, and Base58 with customizable length.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
