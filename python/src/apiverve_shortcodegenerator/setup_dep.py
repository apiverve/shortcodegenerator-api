from setuptools import setup, find_packages

setup(
    name='apiverve_shortcodegenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Short Code Generator creates custom alphanumeric short codes for vouchers, referral tokens, and redirect slugs. Specify a length, batch count, and character set like numeric, hex, or Base58 to receive an array of random strings.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/shortcodegenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
