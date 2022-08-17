Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A453D77
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660731652;
	h=To:Subject:From:Message-Id:Date;
	bh=lkkuyCg7yrugi0istDkJV5iaC/EWAjg0IU0VwSYZi2Q=;
	b=S+KSlk5gwGbGeQp1h3xgRwnjDfu0/jtwtxHBSS5bKzDQj7et/AMs+Qx5zpzKOu9i
	IQto1MbuJxgKip+mJ1K7htqZIF+ImpT4ASJXP0x3Fe02ZO+LeijkK+yVwGswu0CDpgK
	6oTa7LVJb6rfToR4Oay1fFpFAguEr3f7Pq/OA28w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660731652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lkkuyCg7yrugi0istDkJV5iaC/EWAjg0IU0VwSYZi2Q=;
	b=Fk/xjsxb79YpV1M8YhVHBRQr8GM94IxaZUBhPa/utGfFIuKacMZ0wmEjtIK91MTF
	pfLmlbW6pKGnJl7JI0KRKHrKw/2vRR3Z887L/f1kzzddKSX7WZcdWzygRQ9kLVHyr7F
	cA2FmKuMZhmZ1rTW03T0gS//GoiG9Wr6vstnDUDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ab51f9ed-c4113a4f-24c5-4e12-963a-3f72bd0ee627-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2652da6164f7e6d34c1ac5a0a7943bba9e08f1fd63279853fe3719a02488bd0
Date: Wed, 17 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660731652
