Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D53EA8
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661307052;
	h=To:Subject:From:Message-Id:Date;
	bh=RJLTLL4aWnhrTvZsDglZ7G0t238VLFaVMqkgnaWHv2w=;
	b=P3RZU8FYzZk665YR+WYbp5AF4aU0Mt3UOMujc1BRNC24bX1szftFgVQ6C47GNnUj
	D5MEYYIUvfdGZYSejoKoGIYTv/Ez9AIYVlT8L/YCTCB0xKdmefGy7iQJYgNPJo2chEU
	JrA46Zd+FlosSVNB+KcRnCgBetkaBemoFbQf85Qw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661307052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RJLTLL4aWnhrTvZsDglZ7G0t238VLFaVMqkgnaWHv2w=;
	b=gzOrw9KNk0iXWE4YQ4sFgqTRFNzUK7NwhMLS/yGJPsHVSnWdk2Hgg5cUsAWxb7rK
	U7JXcX96PR4jfF6j5VXkfbF/AqMdjHF3AatkTSVVP7ff0cgFau8fg7RpVRwPvHkkOki
	XiW4p8/7e9JjzgI53dQ0IuTxkz8Nnb3Y7GVpmdzA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cd9de1ea-cbee46dd-74ea-4748-b0f2-1ebe45076d72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f89318e1941486e08f91012f6b3b3a1d1e0938f6fc904896699d1d25b5e5f719
Date: Wed, 24 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661307052
