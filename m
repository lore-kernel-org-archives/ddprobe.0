Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BDA7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646784384;
	h=To:Subject:From:Message-Id:Date;
	bh=Nleev9TFr8zdJ4xTItYIw9KxE5jStxB+bP8L2BhAInA=;
	b=ILgAEnW/U4kdkyKXqosAcFwZ+4jT7QML9nYLPUWXiVT0YNIzzs9CqChNLphprteU
	EtdGsdg3o2Vcr2pNGPHfrVltZXbD/DBa305HWPc8b7QGRkP7j1r/njTHsRGGQkM5tCu
	zXKtD8SwVsVor6HmVaph0PqxJiY4+FpT7fIN8TtE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646784384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nleev9TFr8zdJ4xTItYIw9KxE5jStxB+bP8L2BhAInA=;
	b=NlexZ/OZAbhlwssw9bGy7Y2uedl5uHAXVz9Q0yQCdzBo7TpONxoXlVpwDHFTnoIl
	UHjuNOCSuHPrjTm5VekUn2+vp/q+KCMIizktyg2qm50I05wF1gRzwG5LdpnGp+Gj/Ts
	OHjaK+kkj6w0fSQ7xm5RrGjF3SYjntJtd8nOBPo4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6bff8ed4-2edae894-505f-4196-aae7-d9ed4bc28914-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcc62fd2db2aaa3f7e5dae6159af0eb61d5c77fb348cb5aec7ff005e53ce9f0c
Date: Wed, 9 Mar 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646784384
