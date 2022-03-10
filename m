Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E4C7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646912485;
	h=To:Subject:From:Message-Id:Date;
	bh=rlidA7e9BRwytjfYotEHloWk2MRX7QwNWqWXfaT1jms=;
	b=P6FXLkDvZGWBd1aUgxZ1jrgTRGj5ehU4WEWcFEp1oWVruIoMXS9750pONfUBwcIb
	HLoqoyycXWWR6Q2ZtlreebXUI8NFHOB27xmLbAC9A6K5C/8pFuF3Awb/T1nauHi0ZQB
	feL3YEekFotLvI5J6UsoYIMD6OiPXSdLBTCglH+I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646912485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rlidA7e9BRwytjfYotEHloWk2MRX7QwNWqWXfaT1jms=;
	b=JHF+mmcVlPe4SlPUtJVpryhOSpsnmJMqC9ahnXQL5G9L1bl8KRn8P0g4IcAtq0ot
	nr8j3ACK3ryVShVpwyJDnsTZDkP/NFabvsUAcPed/ozHR3wGR2G3Ri7FrL68gvqXmdd
	vzAlcD4o3VWUBuCwq7ngB+7Q75akyFlbDGWi+IxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73a23576-258e3e14-ce24-4f79-ad93-a8b584f4056b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25dd4cdf1052bea157c65255795ad1e987ff4827947672834c1e0b1bacbeb866
Date: Thu, 10 Mar 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646912484
