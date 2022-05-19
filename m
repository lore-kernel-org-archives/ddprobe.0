Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F321023D6
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 11:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652958299;
	h=To:Subject:From:Message-Id:Date;
	bh=wh8TXBu+sPZfNuwrfkywXtGxu/bildh5/i1p6RK7KqU=;
	b=BB2nmRTaaQui8kj7hhFGUyv7xB6KYMQqSBQrxaJkWjObytZGseMef/qIqq5qLkGJ
	/KwrY93sSwfToU2xXPRebvrRNVbxZc0OPeDRrCrNfikvCYy20GEZ87wnSEeKnJwC5aM
	6Oe6vCXxd1aJSaDBN8DmxKg36kZzTE6RBVT+8rtw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652958299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wh8TXBu+sPZfNuwrfkywXtGxu/bildh5/i1p6RK7KqU=;
	b=JsgcuU4wAATw6Ru81LvhFGoZpWrm1CqKTB0u5NVQ3XAAYYvnATDCwsJy/Xj3GO78
	dUjeteQQgi2bfdeCUK0vlbEquukwKpTTwlt4lxzWTCzwyjk55v8yUos3v/i3FT02vn8
	EFeS+qAS5QCNC7fGqQvKTV1mGl+v+MJRFq0uHMNo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dbfe048e-f94841eb-8909-4f9a-8bcd-ea96be7e76d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28b106375ec884717ca373d13fb0082acf45949c5486cae1dfc6e3ee6dde5e34
Date: Thu, 19 May 2022 11:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652958299
