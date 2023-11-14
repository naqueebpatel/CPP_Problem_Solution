
#include<iostream>
#include<fstream>
#include<conio.h>
#include<stdlib.h>
using namespace std;
int main()
{
	char ch[5];
	int k;
	ifstream fin("allnum.txt");
    ofstream eout("even.txt");
    ofstream oout("odd.txt");
    if(!fin)
    cout<<"FILE NOT FOUND"<<endl;
    else
    {
	while(!fin.eof())
	{
		fin.getline(ch,5);
		
		k=atoi(ch);
	
	if(k%2==0)
		eout<<k<<endl;
		else
		oout<<k<<endl;
	}
	cout<<"FILE COPIED SUCCESSFULLY"<<endl;
    }

getch();
}