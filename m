Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 816C21FCB
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644988585;
	h=To:Subject:From:Message-Id:Date;
	bh=nU1TiZSJht3+Cf3tVE+g2Ip5KND0+Xe2Ga4mrEhKCss=;
	b=IDBLjili8nRScoKs5TM41PMJHXaWAwz6v3teNTiS9C94dPNlP2KWwVjVLlGSRNDw
	noeC5Im3sPj/Nk69jrUb49vdUjt5iZez0dXaOGVlajTAHRVpnzDa/xK/LaEPBdP32ub
	Jb/sRTDdCiMWV0eVmp7F3flkra8pGwmXvSq5N63o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644988585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nU1TiZSJht3+Cf3tVE+g2Ip5KND0+Xe2Ga4mrEhKCss=;
	b=XjjGJqOOxWlOHkblAB5h7G0/h65rdZ8w/bZNPVOvp+u5SMDwXI+WYIJnbra+69eB
	BRjSLhEofa76fKpTXMXO+0+FY0DCKvl7F6m+pioEeiDsKDBHKwlEU5IQmwALZsgzbbR
	Mm+F9+v17hnf6o+YozXXc6CEMQsJ8PNImryCUx5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f00f5d32d-a6511f6b-44ec-4ef1-b13f-2407dac98ed9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9130ff17071cfcff28778cf9d474b2ea4924acf0c9fc63770ea9aa2ce536974a
Date: Wed, 16 Feb 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644988584
