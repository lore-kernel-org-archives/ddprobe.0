Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E77C89
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644914484;
	h=To:Subject:From:Message-Id:Date;
	bh=KG/o44pZl4+clmKa4epnA0Y7bCLIUV9buSoe3Pjz/1s=;
	b=A2kTwOEcf+ArWOaNvx/BTSxwl7kBI+aneyCT6bMUb0s/VRSanHhVwMR/VLnawSyc
	Oo/z+5Gb50MUDjUD26Lm/dAnMGouRf+PxUHm++UjhWV44esgqEC9nFNhFVFIHWIeAaH
	PnrhOi9uw2OgA1d5MS/eTjHPyADUKOXXXp/B8QMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644914484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KG/o44pZl4+clmKa4epnA0Y7bCLIUV9buSoe3Pjz/1s=;
	b=gcVp6+Y+eK6nxjgQ60UgzdI0jLDapgtY20hy83L20G76RkhT/lyEEthAazZ9kz6s
	IFJ1veAEYLLk1UaE/IQNDpFegmxV/5+9JotGtfyamdHuauHBXN9OPnn71QtwVaZ2koY
	12SwurRFFXt95fj5aPP8hEE26ricUD4MEXoI28lM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc8b25fa-7836c134-4ee1-4bf2-b475-a44158efb031-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03cc2737119ca6e896105012c9ddb428900fdf9aff4f1b322710e74315b09091
Date: Tue, 15 Feb 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644914484
