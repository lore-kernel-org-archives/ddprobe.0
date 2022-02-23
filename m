Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB6F57E4
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645582585;
	h=To:Subject:From:Message-Id:Date;
	bh=P3WXWZ7YP8zl0WQyoeqQm9DO3CJXSKZuNUocO1iytS8=;
	b=Cw1o6+fo8BxeEEbAGAza0w0UEodDu2Xsda12yDB5VkB8bM4w6pE5MW5sIEzzXDZ8
	ld9YMH+DmXrCDPK0rIqdV6FJIe3Zz02cGCXxeQRiuVujCEKrXYcsEneeIdY/TK4V5z8
	G68mk3/VZMYLypy/BiGm6X84LjCMHdb755nCnPEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645582585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P3WXWZ7YP8zl0WQyoeqQm9DO3CJXSKZuNUocO1iytS8=;
	b=chKJ7nG1TVDtwkXQxpnK4gQqsKtfOfKzBM9oOUMgocPI7Oulbg7kWBwmVCdqT7AE
	f66iHJshF9PlcC4sENBan9m1a1iep1Inj3m8wL/7JLaED81AqIT5KfRh/sqMs/uG8p7
	/eeZzVNIHq808WG2tlIoilJxCr+yIh59MYQM4OSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f245d8bbf-04b47dfa-8ab1-4dfb-be1c-d3d928f090f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a76495e8ab17db85c388a27af55ce53fec3523d9c6a05541237f33e9d2ba3bb5
Date: Wed, 23 Feb 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645582584
