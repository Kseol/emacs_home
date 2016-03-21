(deftheme test1
  "Created 2016-01-26.")

(custom-theme-set-variables
 'test1
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector ["#eaeaea" "#d54e53" "#b9ca4a" "#e7c547" "#7aa6da" "#c397d8" "#70c0b1" "#000000"])
 '(custom-safe-themes (quote ("d43120398682953ef18fd7e11e69c94e44d39bb2ab450c4e64815311542acbff" "40741c04ba116ae965df184794597f62ae5a3c5ee6519097506f3a3b54552dd2" "cb18233197cedab557c70d171b511bed49cc702f428750925280090c31498bd2" "0aca3a26459bbb43a77f34bc22851c05c0a5d70d3230cbcdbda4fec20fef77e6" "91fba9a99f7b64390e1f56319c3dbbaed22de1b9676b3c73d935bf62277b799c" "d1a42ed39a15a843cccadf107ee0242b5f78bfbb5b70ba3ce19f3ea9fda8f52d" "71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" "1edf370d2840c0bf4c031a044f3f500731b41a3fd96b02e4c257522c7457882e" "aed73c6d0afcf2232bb25ed2d872c7a1c4f1bda6759f84afc24de6a1aec93da8" "e2e4e109357cfcebccb17961950da6b84f72187ade0920a4494013489df648fe" "cdfb22711f64d0e665f40b2607879fcf2607764b2b70d672ddaa26d2da13049f" "18a33cdb764e4baf99b23dcd5abdbf1249670d412c6d3a8092ae1a7b211613d5" "85b426d9421ec5bdb5459bfe8bab32ee5ecfeed8728a1aa78e9730e947bf79b5" "561ba4316ba42fe75bc07a907647caa55fc883749ee4f8f280a29516525fc9e8" "bf9f5c66dbd588a9042eeec8a24873e992b15cea63e558897caf5ff2e7d694cb" "4293fd804584b5ecbae43abb3e1d41240ae7781032577b3dfc321dc5df94422a" "662b969569c5c4cd9a0d2354bc1ae2ea545b77f54a5e0eb00fce8c03e00542d9" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "71c2a8ca3062641480d04ab1635e4a99487c70ecadb8f9288fedbeffaed1c6b6" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "8efcd5dd55a39c9e3f4d568b3b7e4ef3a47638baa6a9016cb9d244a183d134a8" default))))

(custom-theme-set-faces
 'test1
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "light blue" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 173 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "SlateBlue1"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "dark turquoise")))))

(provide-theme 'test1)
