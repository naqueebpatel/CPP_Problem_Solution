#include<iostream>
using namespace std;
class novel
{
	int id;
	char name[20];
	char author[20];
	static int cnt;
	public:
		void accept()
		{
			cout<<"ENTER THE NOVEL ID"<<endl;
			cin>>id;
			cout<<"ENTER THE NOVEL NAME"<<endl;
			cin>>name;
			cout<<"ENTER THE NOVEL AUTHOR"<<endl;
			cin>>author;
			cnt++;
		}
		void display()
		{
			cout<<"THE NOVEL ID IS:::"<<id<<endl;
			cout<<"THE NOVEL NAME IS:::"<<name<<endl;
			cout<<"THE AUTHOR IS:::"<<author<<endl;
		}
		static void count()
		{
			cout<<"THE TOTAL COUNT OF BOOK IS:::"<<cnt<<endl;
		}
};
int novel::cnt=0;
int main()
{
	int n,i;
	cout<<"ENTER THE NO OF ENTRIES"<<endl;
	cin>>n;
	novel obj[n];
	for(i=0;i<n;i++)
	{
		obj[i].accept();
	}
	for(i=0;i<n;i++)
	{
		obj[i].display();
	}
	novel::count();
}