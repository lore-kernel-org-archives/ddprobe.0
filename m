Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5450B2F5F
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 22:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652655059;
	h=To:Subject:From:Message-Id:Date;
	bh=ewpzJ5vV9b8ejvB6Ey5S+1vJQyiqGzHPCqDz61H5cJA=;
	b=Tr+Lh0jcijaimXaOgC4EUvNGxMl6DRkiUyO42HE8z1YthvrFoFvHX5VAl0dgSwg5
	dFaoN96FMoyZV5A61YUEmgnhWMXQPtZhc9UNFoFf3BCwg6O/MhnLAN6iZYBqN//4gSW
	XU6CsZXC47lWIQIeOmQx2jPXvB0mu5D5c88Vb8jo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652655059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ewpzJ5vV9b8ejvB6Ey5S+1vJQyiqGzHPCqDz61H5cJA=;
	b=IQseguzIOtPcF4b2gUBQNkWcj6aswWlE7BusCgQDmyHuyxCg4YgXilpmZEq/RvQh
	zqi04WiR3ALPT6t7cEjAulPe26LvttiwCmllxUyPL2dvsI/AaHklelHpyIwUK7dxAZQ
	xAG11UaWMLmWWt4zgTjGKe+l9RhhKFbfFGdNbM5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c9eaf146-a5128150-2fad-4225-a777-f31015d31650-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 647e83803b74426777cf69c398c61afce75043be7c5c451465b73be4563f5045
Date: Sun, 15 May 2022 22:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652655059
