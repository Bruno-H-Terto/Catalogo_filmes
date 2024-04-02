class Movie < ApplicationRecord
    enum status: {
        draft: 0,
        published: 2
}

end
