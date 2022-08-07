Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456201363
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659861052;
	h=To:Subject:From:Message-Id:Date;
	bh=cXiuJaVwOCXj55wU9YGKw+kqpVMFyQ3oLMarljYnicU=;
	b=XzmTPUJnSy9+/Sepc24AwB9BC4pUXRr8Jn/l2YsG62F+L7VbLZFIzHzSzFULn8bm
	GiWq/LJlyNJriKtR0FPxmCSqQF4UyE3/Kw1/7xWIy9tn9oRIxl9QAOasthXjjAtQc/G
	xOt0jirdhT2GmwlqhU7SkQIAJr/Wb30gqeAClNFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659861052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cXiuJaVwOCXj55wU9YGKw+kqpVMFyQ3oLMarljYnicU=;
	b=a+wx9qUeOHMoamrXxK1CXsSZ/Whfe45ms97PYAtrXMnqbBl4WdrTo+5vtiZdyaia
	a8ZDpzlGYY7x7AtWzud6nESq4b2yVkxld3/c43aJo6PSwKj/H/z00ZGZVdOWy0AsP2Z
	D2wuv977ZHgBXY+7K1w7jW9pz1mc+4Yg9+sn3Tw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182776dac7c-fd9a468a-f0bc-4bf0-b0aa-32dcab419bda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef6de3c048135f3fb7a1b537eccd1481ada0cf7cab1d1affdc23b6596ee9fc62
Date: Sun, 7 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659861052
