Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8FE366
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645554985;
	h=To:Subject:From:Message-Id:Date;
	bh=FkK05w1Xgqno3R+jvCa6XGs4TKvltAoNCOUbN8vGXv8=;
	b=JajPo+yo+8FEcY4NdK7FQ9GPHtMyEV5oShrNwJ+Bdx8N3Sz3DakEwgmMhq/hkqkI
	0dUV6eugPlP4BQNJeTNt6ZKvxbsY3em0NaQZj2IB4dUluxqll66zrJeW+ddPkIQcB8V
	vNaGqMvMTFm20wLN5PaZzdTWBcYx02Giay/x6jH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645554985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FkK05w1Xgqno3R+jvCa6XGs4TKvltAoNCOUbN8vGXv8=;
	b=AWcu2R/Sri4nlvek3pkjFmssxkNV3nIdyIUiLe2q57D6u8/u4Is03+9mQ8jXoC4+
	SBAYlk2vzc6pmr2KpMyVIjSKocZre/9iI89Do5AKDxDgLV9LOcFcvlbBJZq04iUH1wX
	/jnBNg4F4j9DwkZP+JXiO5BrwUaDzcwPxlOdJ9AM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22b86771-744e3207-e6b4-4bf8-9758-3e9c14680ce7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c2592c3a4c7ddf9d2eee9cacdb430ce6ff978d003be9b4ac9f5b988cd014c2d
Date: Tue, 22 Feb 2022 18:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645554984
