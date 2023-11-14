#include<fstream>
#include<iostream>
#include<conio.h>
using namespace std;
int main()
{
	char ch;
	ifstream fin("abc.txt");
	ofstream fout("pqr.txt");
	if(!fin)
	{
		cout<<"FILE NOT FOUND"<<endl;
	}
	else
	{
		while(!fin.eof())
		{
			fin.get(ch);
			fout<<ch<<endl;
		}
	}
	cout<<"FILE COPIED SUCCESFULLY"<<endl;
getch();
}