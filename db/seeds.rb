# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

meetings = [
    { :meeting_date => Date.new(2012, 1, 23)}, 
    { :meeting_date => Date.new(2013, 2, 27)}, 
    { :meeting_date => Date.new(2012, 10, 24)}
]

meetings.each do |attributes| 
    Meeting.find_or_initialize_by_meeting_date(attributes[:meeting_date]) do |t|
        t.save!
    end
end

resolutions = [
  {:title => "End Public Nudity", :body => "Lorem ipsum dolor sit amet, consectetur adipiscing 
    elit. Phasellus viverra, felis ut commodo sagittis, dui sem gravida ipsum, ac rhoncus tellus 
    lectus quis libero. Integer nec risus ligula. Cum sociis natoque penatibus et magnis dis 
    parturient montes, nascetur ridiculus mus. Sed mollis sem vitae velit pellentesque vel 
    interdum urna facilisis. Cum sociis natoque penatibus et magnis dis parturient montes, 
    nascetur ridiculus mus. In blandit vulputate ante, eu elementum nunc egestas eget. In hac 
    habitasse platea dictumst. Integer at lorem nulla, ut iaculis nunc. Sed tincidunt, felis non 
    egestas dapibus, velit urna pellentesque lectus, quis varius tortor neque quis dui.", :meeting_id => 1},

  {:title => "End All Resolutions", :body => "These resolutions are fucking ridiculous.  We spend so much
    time on resolutions which do nothing.  Shall we register voters and educate them instead?", :meeting_id => 2},
  
  {:title => "Restart Public Nudity", :body => "Lorem ipsum dolor sit amet, consectetur adipiscing 
    elit. Phasellus viverra, felis ut commodo sagittis, dui sem gravida ipsum, ac rhoncus tellus 
    lectus quis libero. Integer nec risus ligula. Cum sociis natoque penatibus et magnis dis 
    parturient montes, nascetur ridiculus mus. Sed mollis sem vitae velit pellentesque vel 
    interdum urna facilisis. Cum sociis natoque penatibus et magnis dis parturient montes, 
    nascetur ridiculus mus. In blandit vulputate ante, eu elementum nunc egestas eget. In hac 
    habitasse platea dictumst. Integer at lorem nulla, ut iaculis nunc. Sed tincidunt, felis non 
    egestas dapibus, velit urna pellentesque lectus, quis varius tortor neque quis dui.", :meeting_id => 3},

    {:title => "Endorsement Reform", :body => "Lorem ipsum dolor sit amet, consectetur adipiscing 
    elit. Phasellus viverra, felis ut commodo sagittis, dui sem gravida ipsum, ac rhoncus tellus 
    lectus quis libero. Integer nec risus ligula. Cum sociis natoque penatibus et magnis dis 
    parturient montes, nascetur ridiculus mus. Sed mollis sem vitae velit pellentesque vel 
    interdum urna facilisis. Cum sociis natoque penatibus et magnis dis parturient montes, 
    nascetur ridiculus mus. In blandit vulputate ante, eu elementum nunc egestas eget. In hac 
    habitasse platea dictumst. Integer at lorem nulla, ut iaculis nunc. Sed tincidunt, felis non 
    egestas dapibus, velit urna pellentesque lectus, quis varius tortor neque quis dui.", :meeting_id => 3}

    ]

resolutions.each do |attributes|
  Resolution.find_or_initialize_by_title(attributes[:title]).tap do |t|
    t.meeting_id = attributes[:meeting_id]
    t.body = attributes[:body]
    t.save!
  end
end

members = [{:email => 'technique@gmail.com', :name => 'Jason Wong'}, 
                        {:name => 'Trevor McNeil', :email => 'trevormcneil@gmail.com'},
                        {:name => 'Mary Jung', :email => 'maryjungsf@gmail.com'},
                        {:name => 'David Chiu', :email => 'davidchiu70@gmail.com'},
                        {:name => 'Kat Anderson', :email => 'katanderson63@me.com'},
                        {:name => 'Malia Cohen', :email => 'malia.cohen@gmail.com'},
                        {:name => 'Tom Hsieh', :email => 'twohsieh@sbcglobal.net'},
                        ]
members.each do |attributes|
  Member.find_or_initialize_by_name(attributes[:name]).tap do |t|
    t.email = attributes[:email]
    t.save!
  end
end

vote_types = [{:name => "Aye", :choice_id => 1}, {:name => "Nay", :choice_id => 2}, {:name => "Abstain", :choice_id => 3}]

vote_types.each do |attributes|
    VoteType.find_or_initialize_by_name(attributes[:name]) do |t|
        t.save!
    end
end