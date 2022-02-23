Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE92DC9E
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645634485;
	h=To:Subject:From:Message-Id:Date;
	bh=e3xTDGBt+rKKTucKP4o3gJA+Y70llvHXRHQ472sS9Jg=;
	b=WsC9RA5/GRAmnkxbsVqc42/mPv2ki1dkh1AVRfvoBBoO9zWZP+XKhWiAi5PIL8BO
	twi7Ui/3xBKjE2h8FvjlNYDG3L6olTDG3YmzvG7M7HXSsNRTPtrfqBgQcesLFVgUMfa
	kfTVUY1DRmLuOHoEX+m1BUrhNeQwansC4ZDt8vno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645634485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e3xTDGBt+rKKTucKP4o3gJA+Y70llvHXRHQ472sS9Jg=;
	b=YS7HLygr3RatT1IXa7HuM4YMfXdxQwCzN3ANAZes4QpubQB0+GjfWUHQyDuQAbHP
	bKtYuku9TI/SLm+4Miim0Vmm4u5SWSv5PxBbnK7skrTeLJm5NKx+YwiXdGbsaZcunbs
	bOOynbFF+5ibFlmTWMcGFl9843EbiIAauNnt0Wgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27757a64-06261852-1770-4555-bd96-56415934b97e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f33774e4ba8d15b4188cccf26291ef1784f9350d5afc4e9ae3d81bcaf93ade7
Date: Wed, 23 Feb 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645634484
