#  Explanation


Perbedaan Singleton dan Depedency Injection
* Perlu diketahui bahwa walaupun Singleton dan Depedency Injection itu memiliki kemiripan dalam penggunaannya, namun perlu 
  kita ketahui bahwa terdapat beberapa perbedaan yang terlihat pada Singleton dan Depedency Injection.
  Disini saya akan menjelaskan Persamaan,Perbedaan,Tahap Penggunaan,Kekurangan dan kelebihan dari masing masing metode.
  
- Persamaan:
1.DI dan Singleton dapat membantu Developer dalam me-manage objek, menghindari pembuatan objeck yang berlebihan atau duplikat
2.Dapat melakukan Pengujian(Testing) walaupun perlu di catat bahwa melakukan pengujian menggunakan Singleton akan lebih sulit
karena instance yang digunakan terikat secara global, menyulitkan dalam pergantian object dengan mock object pada pengujian

- Perbedaan:
1.
2.
3.
4.

/---------------------------------------------------------------------------------
- Langkah Langkah untuk melakukan Depedency Injection
1. Buat
