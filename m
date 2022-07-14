Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C987A
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 05:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657775812;
	h=To:Subject:From:Message-Id:Date;
	bh=sAYzxnG+0VEYdTdKCoAk9ZuRpR5ggmiV1wMmrhrmBpE=;
	b=VKBVw/y2BwOsJ1WL6boX8G0skG5Mu/JUPiC1EN+AhFL7Hphut0PRi+iduaNi1UST
	x7sV2okGDf7bwY54OosSR7tmeJsGd9MvUNBbjmwMZ5grQHPP/PIpUS3qmunSBb44Yx+
	e6TGxCuuNoXIha1nY5Ew/hPTkeDiMjeTHmE4H1sU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657775812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sAYzxnG+0VEYdTdKCoAk9ZuRpR5ggmiV1wMmrhrmBpE=;
	b=PNf1ARwlkde4wulvKQa69gMqNN7/58VKeWUrlmfDKa/wZWUiTp+S6nMNKJw8OP7w
	qcd2XO4FUKfSdgehsX3G2bgYdNF9zbYtcJKvMC6hH3GdkO+mw4tHUlcimC5Spvxfyt1
	vdIeGM7BR5K9ZGXoJZ+fPpiA5F7T1u8dcTg3vIOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb236e99-760bfe32-9c65-43be-bce5-67930bfdd2e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dfac0c93cc0a4c879848cb3c3a6c9bc634ab32986820a14553345f179d18a78
Date: Thu, 14 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657775812
