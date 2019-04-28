#include <iostream>

using namespace std;
void hiasan (){
     cout<<"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"<<endl;
     }
main () 
{

int i, j, nilai[100][100];
hiasan();
cout << "~~~INPUTAN NILAI MAHASISWA~~~\n"; 
hiasan();
for(i=0; i<3; i++)
{
cout<<"Mahasiswa ke-"<<(i+1)<< ": \n";
 for(j=0; j<3; j++)
{
cout<<"Nilai ke-"<<(j+1)<< " : ";
 cin >> nilai[i][j];
}
}
cout << "--------------------------\n";
cout << " Data Nilai Mahasiswa \n"; 
cout << "--------------------------\n";
cout << "Nilai ke | 1 2 3 \n"; 
cout << "=======================\n";
for(i=0; i<3; i++)
{
cout << "Mhs ke-" << (i+1) << " : "; 
for(j=0; j<3; j++)
cout << nilai[i][j] << " ";
cout<<endl;

}}

