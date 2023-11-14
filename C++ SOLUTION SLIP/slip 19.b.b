#include<iostream>
#include<string.h>
using namespace std;
class media
{
	protected:
	int id;
	char title[20];
	public:
	media(int n,char s[20])
	{
		id=n;
		strcpy(title,s);
	}
	virtual void display()=0;
};
class book:public media
{
      long int isbn;
      public:
      book(int n,char s[20],long int b):media(n,s)
      {
      	isbn=b;
	  }
	  void display()
	  {
	  	cout<<"MEDIA ID IS:::"<<id<<endl;
	  	cout<<"MEDIA TITLE IS:::"<<title<<endl;
	  	cout<<"ISBN IS:::"<<isbn<<endl;
	  	cout<<"---------------------------"<<endl;
	  }
};
class cd:public media
{
	int capacity;
	public:
	cd(int n,char s[20] ,int c):media(n,s)
	{
		capacity=c;
	}
	void display()
	{
		cout<<"MEDIA ID IS:::"<<id<<endl;
		cout<<"MEDIA TITLE IS:::"<<title<<endl;
		cout<<"CAPACITY IS:::"<<capacity<<endl;
		cout<<"---------------------------------"<<endl;
	}	
};
int main()
{
	int n,i;
	int id,capacity;
	long int isbn;
	char title[20];
	char ch;
	cout<<"ENTER NO OF DETAILS"<<endl;
	cin>>n;
	media **m;
	m=new media*[n];
	for(i=0;i<n;i++)
	{
	 cout<<"ENTER C FOR CD AND B FOR BOOK"<<endl;
	 cin>>ch;
	 cout<<"ENTER ID"<<endl;
	 cin>>id;
	 cout<<"ENTER TITLE"<<endl;
	 cin>>title;
	 if(ch=='B'|| ch=='b')
	 {
	 	cout<<"ENTER THE ISBN"<<endl;
	 	cin>>isbn;
	 	m[i]=new book(id,title,isbn);
	 }
	 else if(ch=='C'||ch=='c')
	 {
	 	cout<<"ENTER THE CAPACITY"<<endl;
	 	cin>>capacity;
	 	m[i]=new cd(id,title,capacity);
	 }
	}
	for(i=0;i<n;i++)
	{
		m[i]->display();
	}
}