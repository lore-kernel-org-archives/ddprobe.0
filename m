Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59CD7A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645714584;
	h=To:Subject:From:Message-Id:Date;
	bh=DkUo8Xkza2r7bQUD5wt98F/OQdl+pKJe5ypmk4p2uaU=;
	b=lO/6+DN/Dw9/+as0mJH+zZQDuRsOm8yhAL5rPRxKEizHu7j+LR+SSXZ84C4HRU5E
	wcbuexAxwcMy81svEYd2rHT/B08DPJYC5pl2Lte5gYaTJg20V8BP4MMCr3gQkkEmABz
	6Jf9UyuMfe3nj20s2VAatKROZSSJtFNBeoxCAR2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645714584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DkUo8Xkza2r7bQUD5wt98F/OQdl+pKJe5ypmk4p2uaU=;
	b=R1Obz4tmozDsvmLvzKBDbKVSjTqxQJ5HGfcUEtaFqUGAJk1WdoGaHPIRoOxk1XZK
	HcvcI9tDVEPVfLvv8mHte5WQhyiCbp1xVRuHvYRX5+3eq0zb1oyf2GrayWxz35M+kFP
	/c+nxU2pbe1mzBfpubQKx4Q6rZcyjozhqSkfVfVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c3bb493-37909bb4-ad34-4f7c-a914-3b12dfc8c917-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbe7bcf203e2b0bcfe81b0c19edb65cd35f501bf19a6bc0ccab01341104248ae
Date: Thu, 24 Feb 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645714584
