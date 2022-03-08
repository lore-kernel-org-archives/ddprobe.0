Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A43A92F33
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646712685;
	h=To:Subject:From:Message-Id:Date;
	bh=7ilCLmFwOIcqOZgNjPSW5yoEokXsep0Raqy5/HxFLrA=;
	b=VKsdoWe97/T1Xklvx4RJPR/0MSQ/7MV4tK87wjQflI+nPweiJg4s4ZijwX1fSl5F
	UtI7qLcDvMoi3LdGAI8KhKRMl8QESK+S+W/wjooWosSKCjfP6Gbp13i/tjdiq9oECNw
	JDN3U4qMN9fDpsWTVRIPMbe7zrMPZB2TRWf9t39E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646712685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7ilCLmFwOIcqOZgNjPSW5yoEokXsep0Raqy5/HxFLrA=;
	b=iDB573i7p89d2BSCb6yNn4aYjLk2f2MOT9/Us7guv0lOjtXMO6Z6U91u7BfRDPlR
	ap7os8Nf8j6wZWZwmtyVO6GuGNYkXAO1JzhzlVI/LNu19iFmK5pdnAOmzmd/MH9R7ov
	6roP2MLbweX2JT/oib8aUsiBXfkJMHoOI8k23vHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f67b980cf-c19e59db-0a87-4378-8e08-deb6057db5af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1f5ddad224893b6a90e134fca70ec758f6653c5e28263400e9b026a41a97488
Date: Tue, 8 Mar 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646712684
