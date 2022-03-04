Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F9C7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646430685;
	h=To:Subject:From:Message-Id:Date;
	bh=zqUCtBDFv2Vd7REjKJLTqnJ3yhv2rWG/JuyxIc2Ysxs=;
	b=Fyn81XM5gEU//d6GaNzP8Ez9q72fPJGmrjo3Ys1N9LvsBJQUJwIXRexwnVK67VEL
	F1jejAcZW0uDHboi6zKJMSXcltG8ppRuuHah6uNY2IAugjicfI8+ngrrgY9qevrYb7X
	D/Ug3RXeGoKzGFdbC3uMxvLga/pzyV1ZV5UtKcP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646430685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zqUCtBDFv2Vd7REjKJLTqnJ3yhv2rWG/JuyxIc2Ysxs=;
	b=D4mGzgiA/SAVWc2a1Y8u93eVXeM2fbkS312akNw2LYx10kA/NTV67zEZEpljTp4m
	AIlmXTw0RkCHr3lfzh7TerBN99pgalVynGFtifaI2YvzoQ3/r7NN2oT5OyYQMVYRsfs
	2tif2C6D17+3mjkKfz7FbEOQcUJ6FayBRluYfx+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f56ea8684-125466ab-aad6-442e-9eb5-039bff9c033c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4f220fed7cd6bee5d0ec302082359a9c9918da7b15437cd56fd3e5e151a580e
Date: Fri, 4 Mar 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646430684
