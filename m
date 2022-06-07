Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CE47F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 06:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654582919;
	h=To:Subject:From:Message-Id:Date;
	bh=T8PMl4q5STOmB/iGK79B5jxLnSqvBjA99pCUdHzl5Ls=;
	b=FrScL6GR1vdONgEsKnzWXmLjmu8Sgz7gdRILSyG5HAIVSoEgHpKebWN1KQryJ2/s
	MBB6png5loWjpiRl/0q8GQfNDH6dHupEjjS91qtxj7bQbOGhT2/xsA5oQcIdL43OZqz
	Xdh6x8SLQreaT49tYf5hriu5zSE3O6nxSvBkYn9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654582919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T8PMl4q5STOmB/iGK79B5jxLnSqvBjA99pCUdHzl5Ls=;
	b=alPZWtn3cqc0511fpYLjpn7KShuqS8t7pAg9aPv75O1VocpkfaNkAIt0bQ8ReuR/
	cSKFWeWL4vr5tT9KdoGkoiq/7QklPLS6PANupYxGLEt0l6Amp1GjFcLHWciJWN701PF
	2lQWp2kMowtGo6GIGWHWzsjLSeiSbW/xRcWyihyw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813cd3c05b-7a9e09fb-f309-4021-a1ed-87cf0d4abb9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4affcaf9ccd2ea3a6889f1a4ed65330092f236ae66192de112e348cf7b2e635
Date: Tue, 7 Jun 2022 06:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654582919
