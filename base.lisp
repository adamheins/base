#!/usr/local/bin/clisp

(defun base-convert (from to num)
  (write-to-string
    (parse-integer num :radix from)
    :base to))

(defun parse-bases (str)
  (let ((pos (position #\: str)))
    (list
      (parse-integer (subseq str 0 pos))
      (parse-integer (subseq str (+ pos 1))))))

(if
  (equal (length *args*) 2)
  (format t
    (let ((bases (parse-bases (first *args*))))
      (base-convert
        (first bases)
        (second bases)
        (second *args*))))
  (format t "usage: base <from-base>:<to-base> <num>"))
