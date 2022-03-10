Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C2B218D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646922684;
	h=To:Subject:From:Message-Id:Date;
	bh=ZdRcpkn3QzMVhZ14UGB+JjWj/7DzSLGbL1Qup6Mo5o0=;
	b=IhqxdRsmzjiIbKP6yFFV6R3WNSWHDOxahzNvjE35R1ZZ9e/f1h/VUD/7rwy69znO
	GiMfL5Kkmhfr7xA/TwSZbCGZsnHgxns5+83YgOF9Bvd4fLhrIlWuG9y/a7bjfqzczB3
	WU6Os+UEwBjVRofNOjIbLD7u+YSBgOk4glpStDUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646922684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZdRcpkn3QzMVhZ14UGB+JjWj/7DzSLGbL1Qup6Mo5o0=;
	b=fz0JPSYlFRb3AitSg8kK+/RaMufLv209N84fcYzl7HjWSjshfEtfuUamssU1AvCV
	tyfsNiPBV4eTnO9IBpahhU1E9au5bB15GBdJabuVpzhKIqgEfF9CT2IyaPk7RueEAXg
	NXu85vI9ND40xLK/alTB7v5ZpGo6PVzUhc1zd/Ns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f743dd984-7a8a5d27-1b1c-4719-8d95-a7e8e709aee5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00e616edaf9e62e7bb0239f244d42fbcf477ba96f26a3a64b063528e8eb2d455
Date: Thu, 10 Mar 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646922684
