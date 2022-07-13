Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D59A15AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657675013;
	h=To:Subject:From:Message-Id:Date;
	bh=fcouFbWjBz/j+7n1B8thX0lT+UZoAx/iY7y/2BaBsbY=;
	b=KIOXAfA6a6Gsc4/rtz0lPc2k+GExSkeUNuZB0JJQGu+poghnLJDYQOjC2jc/D48W
	P/dBvIGodRHNzX/vSDIqipHGo4+L2sAjTDhGP97j9a9pVsNGREK/UihnPzMTRWv7Crk
	WHFJ3rqFBMCfWhNwzxrM0n2IqyfmPjT5Vrb7W2sw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657675013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fcouFbWjBz/j+7n1B8thX0lT+UZoAx/iY7y/2BaBsbY=;
	b=aqfIH3ZBKAIb1A3OLr79BecAJxtVSr4KO7vafWgtuiOW3QPidtv9Rg0xWdFg6Rz8
	1jjEBuYyiKCOO+v5AGdIYuE3OvKq97Ozu1QYL2mR2r7bkFZ3usts1B3wQS5TMEu235C
	Yy5qRzDHDArCf+GYLMPtd6DzxzJIJBJhlSUq0Et0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f52158ff-46a9eb16-62b6-4763-93c3-b206428d5554-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1a866eda4c318612108acfd6267c19c3256cf3d03f0ba2814b9bd39904e0882
Date: Wed, 13 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657675012
