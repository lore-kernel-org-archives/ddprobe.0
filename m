Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61334A20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658956252;
	h=To:Subject:From:Message-Id:Date;
	bh=Ud+Zv269c9Ya+7MKHiLRqxotP07liEmP0M9QPSpZzPE=;
	b=XFR7mDltyGIhf4YyGhki0vLMEje3pxY5c42Ce9Nqn6ABUi/A6aKnzzDQRMFIiVNv
	zNg26usBteS/zSfkNiYfxE8eKu0suEDTOCYWygYH9ns1sfm5+nvBrQ9ls4ITG434D5k
	c7xaxfjyA+ZvBYSRWdDIkTUT8wzJKDnN6Cab0U4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658956252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ud+Zv269c9Ya+7MKHiLRqxotP07liEmP0M9QPSpZzPE=;
	b=gRoCm5J3U7SegSnAvNALCmGBTgYt7V2FmRUfezoaw9OxZf99nJwi+Xh0aRcMkoQa
	If0PHWbik0gUD1yOtcbOcmcSFp9YPzuju6m08E4j1/udeiUvhclnUyhSN2zGIugEjYJ
	AeI/9UvmKJ4eRtbH56RxC+TaGxFmz9lTDc8tliUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182417f8584-c197de29-f2d1-405c-a5dc-a066ead5c308-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed2152e22a68739a9cf9b559261df8526f161bccbde85698da01b4bdf4646ce7
Date: Wed, 27 Jul 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658956252
