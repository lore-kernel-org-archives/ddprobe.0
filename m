Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075BB7C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 18:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655145899;
	h=To:Subject:From:Message-Id:Date;
	bh=gSayL5PWICalsnJudmMzy/9ZfWpFcfUpCQIWvK12saI=;
	b=UWwiBfz5buL8kijk3LJ+I3hkup8oqdTL7kdZ4a+xj689YvgOdS/3qMiTtUvO8Lbi
	boFRPm8tgMzTIdYfPMFXX5zRZSoWhvOcozC2zEM+bCWsAKKVFSOQh8XZbwwJS+3eBgt
	G5xAO6ikblwUyr+5LVai8Lxwenh/YthTTWYy4+SM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655145899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gSayL5PWICalsnJudmMzy/9ZfWpFcfUpCQIWvK12saI=;
	b=IMUC40KURHHkbZi5BntiRSjYVqy7KSN+SD6j+LgbRubaT2VBqmqB+rCRU1a599Rn
	fBBsrBLhg/uKq+8pIQjgwgqUSJB+D4CFyNOZBGm0RvruiayAxiBWizbWcryObiskDYS
	pWDnVZaBHqWMrGTe1rFBGvu8VWRLNuKlu3vkz/2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815e6224fd-b965263c-d898-47e8-923e-4524d0426d1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b541a98b4f38f58a300902151aa4958e7957394217137bbaaa22fd31d8639c21
Date: Mon, 13 Jun 2022 18:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655145899
