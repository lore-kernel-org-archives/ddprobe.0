Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE5338D1
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645077985;
	h=To:Subject:From:Message-Id:Date;
	bh=NBnlLoCOzSDiH9y6iLruEc73ILErlgr95WppGhW2eCY=;
	b=Wxz7p0uaUEI0AxlRJ8MonwkRuWcXq46M5tGJ9boLK5k3b2yFAp4lP8PYWxPfzQRu
	LiJVruf+9Rd1ZtWdJAqcUnfO1rdSnRMLZT5vaRvGCDyxT5PaOXzCoFnh4abVucijktJ
	ChJOO6D359hR0gnw8iMatlQix52nyQ8i2Hq6NkzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645077985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NBnlLoCOzSDiH9y6iLruEc73ILErlgr95WppGhW2eCY=;
	b=FhFAA38AYEMR3CdFgoVc6uv8M02YVvPeDJ3+Z6wbtGul2q1qw/tGn6YwgdqXpnxR
	vPqPHRFgw/fBpzIVyjmva5REN92msbLhY8So7rYb18peOQ2LzbfwzzmpF3PfkIsnVBg
	A3DNOU9T+eOLe73Gx0BHK9P6q142xx/i6PXFtCxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0649f60b-71fc93e4-9a62-4ca3-8d9e-355705455789-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40e1c4f14a7aef3ffd6616edfdb204b61ab6b290c96bd000e743c330e2e4df83
Date: Thu, 17 Feb 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645077984
