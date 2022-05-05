Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C1C625
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 10:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651746598;
	h=To:Subject:From:Message-Id:Date;
	bh=EWFnGUV0So8UlkJSp+bghCiT+Gl42rSUqb91jyeQG3Q=;
	b=KPTPdWBLZyNLv8PEQO7zYJ6A5TbvmUtzvrBinAn50OV4stRRlqAThY15P31q10yM
	lyZDFMjyjY01mlmxKS2xOeeKn+Lr7kvNvJVvAeq82DURA8Qi3/wRjjjBpnZW3supROp
	4K4TwoGzLY/qcvs1UPJKZkHiT4QCob1QzdEW2iQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651746598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EWFnGUV0So8UlkJSp+bghCiT+Gl42rSUqb91jyeQG3Q=;
	b=Dr/nLT3JTR/LcA56edlXbBvm7jCi37in7fx9hgY8lzNoGCvA5xu4SugGPIQSfgtl
	adBxMeDb1T8p2rIHVAL8y09TIY46cLL0BpWYf+SOOawYrsTynuwvwJ8kaRRHJJjQ/6W
	wSHcpUgf3vEWxddUBuzvWzRv0tn9Mw6LkJbRRLn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018093c4eda3-e3876ead-106f-4241-b71e-ac4c8d2bb0e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca2494d5240bcfff9f9600ba354ab517975f01bb60e75f2ab658f9ba35265b41
Date: Thu, 5 May 2022 10:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651746598
