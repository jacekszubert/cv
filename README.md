# CV and resignation letter LaTeX template
> Full toolkit needed to change a job

## Prerequisites
Packages required to build each component:
- make
- texlive-base
- texlive-full

### cv.pdf
- texlive-latex-extra

## Building
To build final PDF documents use GNU make:
```
cp .env.resignation.dist .env.resignation
make [all]
make cv.pdf
make resignation.pdf
```

## License

[![CC0](https://licensebuttons.net/p/zero/1.0/88x31.png)](http://creativecommons.org/publicdomain/zero/1.0/)
