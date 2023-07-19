#!/bin/sh

ORIGIN="https://www.jstage.jst.go.jp/article/mta/6/1/6_2/_pdf/-char/en"
FILE="A_Survey_of_Product_Quantization.pdf"

function transform_file(file) {

    pdftotext -layout "${file}.pdf" "${file}.txt"
    pandoc -o "${file}.epub" "${file}.txt"
    rm "${file}.txt"

}


wget "$ORIGIN" -o "$FILE"

transform_file("$FILE")
