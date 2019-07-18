/*
 Navicat Premium Data Transfer

 Source Server         : MongoDB
 Source Server Type    : MongoDB
 Source Server Version : 40009
 Source Host           : localhost:27017
 Source Schema         : Test

 Target Server Type    : MongoDB
 Target Server Version : 40009
 File Encoding         : 65001

 Date: 18/07/2019 14:46:52
*/


// ----------------------------
// Collection structure for address
// ----------------------------
db.getCollection("address").drop();
db.createCollection("address");

// ----------------------------
// Documents of address
// ----------------------------
db.getCollection("address").insert([ {
    _id: ObjectId("5d1b38fcdb6c000015007a25"),
    building: "22 A, Indiana Apt",
    pincode: 123456,
    city: "Los Angeles",
    state: "California"
} ]);

// ----------------------------
// Collection structure for book
// ----------------------------
db.getCollection("book").drop();
db.createCollection("book");

// ----------------------------
// Documents of book
// ----------------------------
db.getCollection("book").insert([ {
    _id: 15112345678,
    title: "MongoDB",
    author: [
        "Tom",
        "Jerry"
    ],
    "published_date": ISODate("2019-01-01T00:00:00.000Z"),
    pages: 216,
    language: "Chinese",
    checkout: [
        {
            by: "joe",
            date: ISODate("2019-01-01T00:00:00.000Z")
        },
        {
            by: "abc",
            date: ISODate("2019-07-03T08:47:13.112Z")
        },
        {
            by: "abc",
            date: ISODate("2019-07-03T11:28:44.8Z")
        },
        {
            by: "abc",
            date: ISODate("2019-07-03T11:28:47.545Z")
        }
    ],
    myPush: [ ],
    available1: 7
} ]);

// ----------------------------
// Collection structure for cappedLogCollection
// ----------------------------
db.getCollection("cappedLogCollection").drop();
db.createCollection("cappedLogCollection",{
    capped: true,
    size: 10240,
    max: 1000
});

// ----------------------------
// Collection structure for counters
// ----------------------------
db.getCollection("counters").drop();
db.createCollection("counters");

// ----------------------------
// Documents of counters
// ----------------------------
db.getCollection("counters").insert([ {
    _id: "productid",
    "sequence_value": 2
} ]);

// ----------------------------
// Collection structure for post_total
// ----------------------------
db.getCollection("post_total").drop();
db.createCollection("post_total");

// ----------------------------
// Documents of post_total
// ----------------------------
db.getCollection("post_total").insert([ {
    _id: "mark",
    value: 4
} ]);
db.getCollection("post_total").insert([ {
    _id: "tom",
    value: 1
} ]);

// ----------------------------
// Collection structure for posts
// ----------------------------
db.getCollection("posts").drop();
db.createCollection("posts",{
    capped: true,
    size: 10240
});

// ----------------------------
// Documents of posts
// ----------------------------
db.getCollection("posts").insert([ {
    _id: ObjectId("5d22f808186200002c0042f6"),
    "post_text": "教程0",
    "user_name": "mark",
    status: "active"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("5d22f808186200002c0042f7"),
    "post_text": "教程1",
    "user_name": "mark",
    status: "active"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("5d22f808186200002c0042f8"),
    "post_text": "教程2",
    "user_name": "mark",
    status: "active"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("5d22f808186200002c0042f9"),
    "post_text": "教程aaa",
    "user_name": "tom",
    status: "disabled"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("5d22f808186200002c0042fa"),
    "post_text": "教程4",
    "user_name": "tom",
    status: "disabled"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("5d22f808186200002c0042fb"),
    "post_text": "教程5",
    "user_name": "tom",
    status: "disabled"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("5d22f808186200002c0042fc"),
    "post_text": "教程6",
    "user_name": "tom",
    status: "disabled"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("5d22f808186200002c0042fd"),
    "post_text": "教程7",
    "user_name": "mark",
    status: "active"
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("5d22fa85186200002c0042fe"),
    "post_text": "教程8",
    "user_name": "tom",
    status: "active"
} ]);

// ----------------------------
// Collection structure for products
// ----------------------------
db.getCollection("products").drop();
db.createCollection("products");

// ----------------------------
// Documents of products
// ----------------------------
db.getCollection("products").insert([ {
    _id: 1,
    "product_name": "Apple Phone",
    category: "mobiles"
} ]);
db.getCollection("products").insert([ {
    _id: 2,
    "product_name": "Samsung S8",
    category: "mobiles"
} ]);

// ----------------------------
// Collection structure for user
// ----------------------------
db.getCollection("user").drop();
db.createCollection("user");

// ----------------------------
// Documents of user
// ----------------------------
db.getCollection("user").insert([ {
    _id: ObjectId("5d1b388adb6c000015007a24"),
    name: "Tom Hanks",
    contact: "987654321",
    dob: "01-01-1991"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("5d1dd7885046000020006555"),
    address: {
        city: "DongLi",
        state: "TianJin",
        postcode: "300000"
    },
    tags: [
        "Chinese",
        "music",
        "blogs"
    ],
    name: "Tom"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("5d22b74b186200002c0042f2"),
    address: {
        city: "DongLi",
        state: "TianJin",
        postcode: "300000"
    },
    tags: [
        "Chinese",
        "music",
        "blogs"
    ],
    name: "Tom"
} ]);

// ----------------------------
// Collection structure for user_address
// ----------------------------
db.getCollection("user_address").drop();
db.createCollection("user_address");

// ----------------------------
// Documents of user_address
// ----------------------------
db.getCollection("user_address").insert([ {
    _id: ObjectId("5d1b3c0bdb6c000015007a26"),
    contact: "15112345678",
    dob: "2019-01-01",
    name: "Tom",
    address: [
        {
            building: "红光山",
            postCode: "300000",
            city: "乌鲁木齐",
            state: "新疆"
        }
    ]
} ]);
db.getCollection("user_address").insert([ {
    _id: ObjectId("5d1c1efda87000008d004522"),
    address: DBRef("address", ObjectId("5d1b38fcdb6c000015007a25"), "Test"),
    contact: "15112345678",
    dob: "2019-01-01",
    name: "John"
} ]);

// ----------------------------
// Collection structure for user_address_by_id
// ----------------------------
db.getCollection("user_address_by_id").drop();
db.createCollection("user_address_by_id");

// ----------------------------
// Documents of user_address_by_id
// ----------------------------
db.getCollection("user_address_by_id").insert([ {
    _id: ObjectId("5d1b3e47db6c000015007a27"),
    contact: "15112345678",
    dob: "2019-01-01",
    name: "Jerry",
    "address_ids": [
        ObjectId("5d1b38fcdb6c000015007a25")
    ]
} ]);

// ----------------------------
// Collection structure for user_cover_index
// ----------------------------
db.getCollection("user_cover_index").drop();
db.createCollection("user_cover_index");
db.getCollection("user_cover_index").createIndex({
    gender: NumberInt("1"),
    "user_name": NumberInt("1")
}, {
    name: "gender_1_user_name_1"
});

// ----------------------------
// Documents of user_cover_index
// ----------------------------
db.getCollection("user_cover_index").insert([ {
    _id: ObjectId("5d1c243aa87000008d004523"),
    contact: "15112345678",
    dob: "2019-01-01",
    gender: "M",
    name: "Jerry",
    "user_name": "John"
} ]);
db.getCollection("user_cover_index").insert([ {
    _id: ObjectId("5d1c24aaa87000008d004524"),
    contact: "15112345678",
    dob: "2019-01-01",
    gender: "M",
    name: "Jerry",
    "user_name": "John"
} ]);
db.getCollection("user_cover_index").insert([ {
    _id: ObjectId("5d1c24b8a87000008d004525"),
    contact: "15112345678",
    dob: "2019-01-01",
    gender: "M",
    name: "Jerry",
    "user_name": "John"
} ]);

// ----------------------------
// Collection structure for user_top
// ----------------------------
db.getCollection("user_top").drop();
db.createCollection("user_top");
db.getCollection("user_top").createIndex({
    tags: NumberInt("1")
}, {
    name: "tags_1"
});
db.getCollection("user_top").createIndex({
    "address.city": NumberInt("1"),
    "address.state": NumberInt("1"),
    "address.postcode": NumberInt("1")
}, {
    name: "address.city_1_address.state_1_address.postcode_1"
});

// ----------------------------
// Documents of user_top
// ----------------------------
db.getCollection("user_top").insert([ {
    _id: ObjectId("5d22b767186200002c0042f3"),
    address: {
        city: "DongLi",
        state: "TianJin",
        postcode: "300000"
    },
    tags: [
        "Chinese",
        "music",
        "blogs"
    ],
    name: "Tom"
} ]);
