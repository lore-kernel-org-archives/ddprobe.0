Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CF3747E
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 21:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658354212;
	h=To:Subject:From:Message-Id:Date;
	bh=xqBKVht4bkRP1zSDD+0nmvU8dRJITTL/tMmwoDqmHgo=;
	b=XLx1Gz+tRVZd91/Gvb2LLqx9sOETQgfn7KqNWSBru2Sy49zyHQ6gHZkweD+3d4Nv
	l7ElhijOxHjGNCyTm9zR7u2DRsmP4v49gx1ddv8EoGGHIIpVfUXQJTSEmlnHA0Ojx5/
	DEBvZkusLuDB4UKyX5D5DEHXf70sxk9vWNmQO4vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658354212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xqBKVht4bkRP1zSDD+0nmvU8dRJITTL/tMmwoDqmHgo=;
	b=AVaok6xKvA3X89CrAsRlkkh/um1LQ9RIzFVLOC5znIkxaVlLQ1tWRWMq3Gh6PzZ5
	2zCi5rIpCbyB4WidcKFU2StU2Acm0VdmsQQuoffn3TwqAxfPv6mqnq5qqY53s0sSX3Y
	TqiVLFQn/g/wMA2tLMW0Cr09JLWLIJQ016hDccHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821d9d1da7-8e324c33-f519-4c8e-9df8-1d2ffa57bd0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53ea3602742ff0b2376dbf47250294f7ec8d76299d65aabe9d5a384fa9d8f432
Date: Wed, 20 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658354212
