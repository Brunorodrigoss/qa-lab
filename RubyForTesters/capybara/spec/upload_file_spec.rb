describe 'Upload file', :upload do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/upload'

        @file = Dir.pwd + '/spec/fixtures/file.txt'
        @image = Dir.pwd + '/spec/fixtures/capy.jpg'
    end

    after(:each) do
        sleep 3
    end

    it 'text file upload' do
        attach_file('file-upload', @file)
        click_button('file-submit')

        div_file = find('#uploaded-file')
        expect(div_file.text).to eql 'file.txt'
    end

    it 'image upload', :upload_image do
        attach_file('file-upload', @image)
        click_button('file-submit')
        
        img = find('#new-image')
        expect(img[:src]).to include '/uploads/capy.jpg'
    end
end