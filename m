Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5665B7F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659487252;
	h=To:Subject:From:Message-Id:Date;
	bh=5SXa4jYHC+6CNI8DZq0Hj8Tr53FS9h6YI6Dfrs1iwjs=;
	b=EnKIPH45AGna6LUREltDseKOjn0YiHc/UBITtEbviArCRgoRwj5nXV06a68wbx6Q
	PxpZHfRdkBO7Li1nNvQ0n3ItkSr84OQedDx/b+V4ZFEKmmTNCVRdoLUe7v+XtwCwfSW
	SWX796Gv84UKpy2OG6FFm9PaE8F87ysEEFGUDLhA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659487252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5SXa4jYHC+6CNI8DZq0Hj8Tr53FS9h6YI6Dfrs1iwjs=;
	b=TRktexFNGJaUFji4HavWJywttIzopzgUuMeHdXxyV9ldSyNh2bR1iFjwRNHDwQ3f
	8JrpiFwatAE+DzY6xl9qikcUILF+tqRMgfDJT8YLuD3o8/4mRmRoyw0wyoVAWIhNudY
	721GHjjs9wXLbyEPCbOZ8gZ5n8ZrpdFgigg/xafM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826125f071-6fc2ab62-ffa5-43ae-9e15-2b1cf1b7f363-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ef45b733ab8a58f226d88b703d32709618063ab8626b299bd1628896d56b97b
Date: Wed, 3 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659487252
