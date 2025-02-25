package toolkit

type File struct {
	Name    string
	Content []byte
}

func (f *File) GetName() string {
	return f.Name
}

func (f *File) GetContent() []byte {
	return f.Content
}
