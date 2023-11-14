#include<iostream>
#include<fstream>
#include<conio.h>
using namespace std;
ifstream fin("abc.txt");
ofstream fout("abc.txt");
class department
{
	int did;
	char dname[20];
	char hod[20];
	int nof;
	public:
		void accept()
		{
			cout<<"ENTER DEPARTMENT ID"<<endl;
			cin>>did;
			cout<<"ENTER DEPARTMENT NAME"<<endl;
			cin>>dname;
			cout<<"ENTER HOD NAME"<<endl;
			cin>>hod;
			cout<<"ENTER NO OF STAFFS"<<endl;
			cin>>nof;
			fout<<"THE DEPARTMENT ID IS :::"<<did<<endl;
			fout<<"THE DEPARTMENT NAME IS:::"<<dname<<endl;
			fout<<"THE HOD NAME IS:::"<<hod<<endl;
			fout<<"THE NO OF STAFFS IS:::"<<nof<<endl;
		}
		/*void display()
		{
			cout<<"THE DEPARTMENT ID IS :::"<<did<<endl;
			cout<<"THE DEPARTMENT NAME IS:::"<<dname<<endl;
			cout<<"THE HOD NAME IS:::"<<hod<<endl;
			cout<<"THE NO OF STAFFS IS:::"<<nof<<endl;
		}*/
};
int main()
{
	char ch;
	int n,i;
	cout<<"ENTER NO OF DETAILS"<<endl;
	cin>>n;
	department obj[n];
	for(i=0;i<n;i++)
	{
	obj[i].accept();	
	}
	while(!fin.eof())
	{
		fin.get(ch);
		cout<<ch;
	}
	getch();
}