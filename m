Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D17C4367
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645119085;
	h=To:Subject:From:Message-Id:Date;
	bh=Sl2LDdcOMwXKWaK/oMt4epcaWzvZsdVDNJgD/rrSf4Y=;
	b=WRs9enQ4wWnTB1rm/MnUbCwhPoPFLLhkdYL6oP/3+d4LemdncO/LXFwTDIpLmoNg
	ddsk810nzR97MLaXQzrCHW5BBibexcm10IAYNbtFkujdV0JmJsPxxiW4PhlnyRZngej
	yl23vheDHTm2/HCSMGXimoZr8S82pbTvhdJCDSGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645119085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sl2LDdcOMwXKWaK/oMt4epcaWzvZsdVDNJgD/rrSf4Y=;
	b=C7BAietFfFkFQdKcK26RFH1A97etbuE+s7LqYx4Sg55jbsq4aSUiaEz2ESK3RvZi
	0AVM8CITNhlT1XQUtWgPaAL8mbNsYrN+Av1tTU+txsVsVnbmiSTO/90clZZTXChkZpH
	RkS7SnqJ2EXBlgOXLCA8bEnjixXHIEUXyZFsshA0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08bd18f5-022822e4-3536-42f5-a819-26d8757b9805-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e65cdd1f802c12b2df8ce5a4842315c1cd3fa5ec7c9f6a3671ce903403c002a
Date: Thu, 17 Feb 2022 17:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645119084
