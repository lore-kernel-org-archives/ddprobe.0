Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5F34622
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645133484;
	h=To:Subject:From:Message-Id:Date;
	bh=QwgsGsYf8k8y5V2z7jtcfE/9Yl48tT7zIHDpTuzLWUw=;
	b=WGk+AMV4c5V6FQ1Kk4n17RysDjj+xf2RhsnMXGh1QhFxfGBcIvnpyfxV/EdiMOVt
	161ZW23ugu4FTN70HJriLtvc2eQryLnZLH10nBrX3JWskr2/fuSPOOxJzFDs3thznWi
	VyloiXpEasiXnEzjrAkYHKxge/JQaDIemQQChvhY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645133484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QwgsGsYf8k8y5V2z7jtcfE/9Yl48tT7zIHDpTuzLWUw=;
	b=g15Nfdgc3z9KKx2KzVrcLYYpHvV5NOgPYrqgl+zdfvJSi1jGESZrez19MRq+G1WH
	ZbkosbReJ2jNIxE65A4oxiY+7bAAd0vOGXgmfemLaYuQkgEL2/yQvy8CaojVFvOq5pP
	M3bXfTAR+5xN1LrWUsbqo1J+BmAEmfxz21ZLCOGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0998d2ef-d0c967f8-7ab4-4b93-a505-26338c8a09a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 362cf896d1a3ae5ad9e2e1115f7ad5c73ffce9e66306d5196149bb4ab0be6f85
Date: Thu, 17 Feb 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645133484
