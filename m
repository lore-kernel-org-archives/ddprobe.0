Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5BA23B35
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645074985;
	h=To:Subject:From:Message-Id:Date;
	bh=kv0AWyBhWYHX3rblHa5rwzbeu9xUzfcCyqhytZE9GHE=;
	b=ehIJO4gQ3FOykUTkUchzzjP2zEtxw3KaJByT4h4K0Wr4UDKnE6ZdtYTopCn5DZsK
	qqrAjUgpiLLi6Nk2tod7rMSCDU5eNiMrzMTO/ZDSbmpOnswY3508INMWJAgE72FJfHL
	OV09od7ZqvSwU6s2SjAQ51X2VqGX8SjKgF+Ve4NY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645074985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kv0AWyBhWYHX3rblHa5rwzbeu9xUzfcCyqhytZE9GHE=;
	b=jbHisvGPoDnGtg1sRbZI9qZtpJcrCp0jj6BVcEcJdq+PqPZG1+KkLKk1smdaiNG/
	SMZR5yrRTM/3BJRzPkfxZL1VXhq+VHMH29t3sKISPrPWC55OArV7xpxhNKWzAPYuq7F
	ZXY84rqIeJAcT21jpSsQzkgreP4YP1phDPtmu2Oc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f061c2f5a-397db9a5-b1d3-4eeb-97b2-4874eb95ac09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac7f267c2087a5053bc702bd48141265284b6e171ba2aa1201cf35cd1039c4b7
Date: Thu, 17 Feb 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645074984
