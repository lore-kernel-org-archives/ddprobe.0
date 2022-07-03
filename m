Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6B61FBA
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656825412;
	h=To:Subject:From:Message-Id:Date;
	bh=hQjjkODNysN3OFHTy/YmNTgMlW2nZnQl1wm+BC7eE/4=;
	b=WGY2yhDTN7/CzLt6Tl05FM0Xg0NPM30nRl5eIAdRLia57y2PyZVgr1RBFLmLdz4Q
	4x7OaAtI9RnI0HM5yhcdTw2GXJiGTH2NJWeXAogVcSy4hnqrh8qepUQQnOQJlTvFLSm
	liYhCv2/egjLvYAwLRzSJLC8Hl1AOQzNGf7aurBs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656825412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hQjjkODNysN3OFHTy/YmNTgMlW2nZnQl1wm+BC7eE/4=;
	b=ZUTuHQ2A9lp/WE41Xc4XOmqGqFgIUAK5WpjGp1PzVZ/xVilWv3s2jaQt0CMMvsfK
	9A9+SDqeqRXiBetkv/frKVhBgA0fuh7iIIzu4KeU+Tokd6vdoIzensLFWwprG+g8Fe+
	FJ26Ej2xNb7IHWo9RVHLVPdYe/3BmQUBZxYQZlAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c27d7ab6-f9f231f5-3455-40cf-a763-c17b318c7dce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d0d47dd3f207845ba3e82e2e41a3ed6cd95677b8bee5d19ab920a22e0cb2072
Date: Sun, 3 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656825412
