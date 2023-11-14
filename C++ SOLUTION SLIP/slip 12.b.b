#include<iostream>
#include<string.h>
using namespace std;
class media
{
	public:
		int bid;
		char bname[20];
		char pub[20];
		char auth[20];
		int bpri;
		char cdt[20];
		int cpri;
};
class book:public media
{
	public:
	void accept()
	{
		cout<<"ENTER BOOK ID"<<endl;
		cin>>bid;
		cout<<"ENTER BOOK NAME"<<endl;
		cin>>bname;
		cout<<"ENTER THE PUBLISHER"<<endl;
		cin>>pub;
		cout<<"ENTER THE AUTHOR"<<endl;
		cin>>auth;
		cout<<"ENTER THE BOOK PRICE"<<endl;
		cin>>bpri;
		cout<<"----------------------------"<<endl;
	}
	void display()
	{
		cout<<"THE BOOK ID IS:::"<<bid<<endl;
		cout<<"THE BOOK NAME IS:::"<<bname<<endl;
		cout<<"THE PUBLISHER IS:::"<<pub<<endl;
		cout<<"THE AUTHOR IS:::"<<auth<<endl;
		cout<<"THE BOOK PRICE IS:::"<<bpri<<endl;
		cout<<"----------------------------"<<endl;
	}
};
class cd:public media
{
	public:
	void accept()
	{
		cout<<"ENTER THE CD TITLE"<<endl;
		cin>>cdt;
		cout<<"ENTER THE CD PRICE"<<endl;
		cin>>cpri;
		cout<<"-------------------------"<<endl;
	}
	void display()
	{
		cout<<"THE CD TITLE IS:::"<<cdt<<endl;
		cout<<"THE CD PRICE IS:::"<<cpri<<endl;
		cout<<"-------------------------------"<<endl;
	}
};
int main()
{
	int n,m,i;
	cout<<"ENTER THE NO OF ENTRIES FOR BOOK"<<endl;
	cin>>n;
	cout<<"ENTER THE NO OF ENTERIES FOR CD"<<endl;
	cin>>m;
	book b[n];
	cd c[m];
	for(i=0;i<n;i++)
	{
		b[i].accept();
	}
	for(i=0;i<m;i++)
	{
		c[i].accept();
	}
	for(i=0;i<n;i++)
	{
		b[i].display();
	}
	for(i=0;i<m;i++)
	{
		c[i].display();
	}
	
}