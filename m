Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09891B62
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645712484;
	h=To:Subject:From:Message-Id:Date;
	bh=GcJD56cy1NGchXA7TQvIzul1Xu58qeNxPgcbjX9vFCM=;
	b=LNIs7oLEDQLd2bxdJt1RYtr2PTsbrXv6Cd8IMoQGJazmNct0v8TjWu6SRqaOqAgo
	TdTO7AditqhbO7152ZYgBDGrKUw/uoC/pG2PPQv4D4gjxejUD+66IHzlBCNKtPFNgSQ
	evsbjlUwO03TyeZJvpgyMRwMemtfaTc6rysJqbKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645712484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GcJD56cy1NGchXA7TQvIzul1Xu58qeNxPgcbjX9vFCM=;
	b=NhpsspwxH/Mw+pf2TYyac5hcCPT0GTm+XSRmX6X+83wKNP1DssDAFeIEsuYYeInA
	t49DsI13xC0wXvwYpD4xu11Hn8a1VkTm/QVEkvW/sVQ/ETXX6Z9+0tT9iMelXTrhRY/
	1ZKYO+vRTPVvZf+A/0PHDhzuGOw6U/HZ9oTXVBgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c1ba9a7-e1ef6c74-31ec-4ce3-bf5f-041e86325c14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58cf74365b50cd977e05f35cf507ab7e840f81604307949e0d6644b403635a17
Date: Thu, 24 Feb 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645712484
