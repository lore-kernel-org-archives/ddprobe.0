Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421F77C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 01:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654651679;
	h=To:Subject:From:Message-Id:Date;
	bh=a9cX5rkE6Am3kkS1fBNlcKlq74qPYeYLIpvyq4lK/Og=;
	b=GWyfUaWm/4EF7ouIEASrz9rSSvmcxdBLLNuVY4ZyKszVFytVAfqw0NXINf61Y1yx
	bxQBEbGqBRbWHfDTebuovML239VgDNJNHqfP8PFiBFFz88Bkuu2dnI3H5JoQDgtRgfc
	d5bXDhvmZcjWG8IlQz8aSzu452N6ar7kS4mPfx4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654651679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a9cX5rkE6Am3kkS1fBNlcKlq74qPYeYLIpvyq4lK/Og=;
	b=Ds2/jAA4UXFKLbNkWjPAMd+fbrwp9Op2jvrRKeBczs38PEqqaX/ARUhotWwy2DWC
	19y/jf06F1OecCB/VWp3A2ofAdUORaXEH5cN8UqRB9cwrP0fM5Mzywa0oB0Yzohv427
	jwq73DAM4g70ISMa4D2l5l5+hUZQJ1rL0o4h2eZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018140ecf20d-d4b4cf28-5d11-46a9-8d61-2bd37fb8c255-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9743ba6e70a56496903b7409e7d2088a882cf4e64d722dab46fce65232979918
Date: Wed, 8 Jun 2022 01:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654651679
