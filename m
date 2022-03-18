Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D51715A8
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647607584;
	h=To:Subject:From:Message-Id:Date;
	bh=Lx+/AV75p1+J4w5v6NBZqmQ8a2SoC2wSA4rMPuDHfXY=;
	b=eCfMcfJPKR2CKUOwebuJicXZiYbOBzeSwor+3wQA9Y1EC6FFAzizLDbXYq11Mt9y
	c+L9jvBFVfPYqw58ql0HJ5P8GZwHdBSPsEOF+UubBcDhwW4Rzk+0RVT3q95Nj0pMgjk
	82KZRCavVtq0IVxR5JftOzpkLvnVeB2VDOViXxTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647607584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lx+/AV75p1+J4w5v6NBZqmQ8a2SoC2wSA4rMPuDHfXY=;
	b=WuK+K0xM/iUTYF/yeiPMLlfgGLbWErpIgbXoLbaDVxxzsyELtq2NI1hpPN3F4pP1
	xjILOaSH192dFdOGDXi8Puc40hHFQOwHxz3i/Gi+66pHzijqk4l00mKWOjUJl/WiStY
	KXL4TOC64o7ldk0tKBveq7CFe1U50sL30tkuxCs4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d10981f-d1ffbc9f-52ca-41a2-ad1d-d3e2a496aa58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2edf29ddc1c68ac9e91090897825677112da0f7adc419035b3ab484fa7de545
Date: Fri, 18 Mar 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647607584
