Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D5715AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647571285;
	h=To:Subject:From:Message-Id:Date;
	bh=2HRWPIcGib7vfxUs0JtJCfMDRE0ZszXJPvOZIzcs5XE=;
	b=Io9f5xzfpMqODwlz9WHDOc3ghsvsIjyt77HN7cHEZuxsnsRAXkiE7jHbWp1xqydE
	aQk/geU2uoEQy2O3S6TtmIOfjOE1oWq7VrZtzLVtV0zXT6L4Ob+NsDFQc2dNUuL9VM3
	Oc+/DP9sOd77oW1hibjtR9juBtQJa8/7L+byHuS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647571285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2HRWPIcGib7vfxUs0JtJCfMDRE0ZszXJPvOZIzcs5XE=;
	b=axegQ1Ym27tBuzbXE4RhaUvQdCJLrYuqdNdFpED9DLBoshM5zONYrQYta3iXTTbA
	rBN64RgbjerowDer1f4DudmXXhtx5QhvVOQLWi+nCsdcJTqypPshsIWrtFzxpa2FFT7
	Rv/2ST5tc+xNpxR5HilOgXQ1pPmOwFzRVc4U3Dro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ae6b34d-b77c7b92-86c4-46db-a23f-3d07940a6d76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed59e1cbd424bcc5efcb8611757e0e8287780f09331334dfd989f842298b8677
Date: Fri, 18 Mar 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647571284
