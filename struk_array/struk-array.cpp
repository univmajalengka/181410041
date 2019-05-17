#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <iostream>
using namespace std;
 struct nasabah
{
   char namaLengkap[50];
   char alamatRumah[100];
   int kode;
   int status;
   char noHP [13];
}nab;
void hiasan (){
     cout<<"==================================="<<endl;
     }
int main()
{
nab;
hiasan();
cout<<"==SILAHKAN MASUKAN DATA DIRI ANDA==\n\n";
hiasan();
cout<<"Nama Nasabah : "; cin>>nab.namaLengkap;
cout<<"Alamat Rumah : "; cin>>nab.alamatRumah;
cout<<"Kode         : "; cin>>nab.kode;
cout<<"Status       : "; cin>>nab.status;
cout<<"No HP        : "; cin>>nab.noHP;

hiasan();
cout<<"\n\n\nDATA YANG TELAH ANDA MASUKAN:\n";
hiasan();
cout<<"Nama Nasabah : " <<nab.namaLengkap<<endl;
cout<<"Alamat Rumah : " <<nab.alamatRumah<<endl;
cout<<"Kode         : " <<nab.kode<<endl;
cout<<"Status       : " <<nab.status<<endl;
cout<<"No HP        : " <<nab.noHP<<endl;
return 0;
}
