Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48082F38
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 13:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653918539;
	h=To:Subject:From:Message-Id:Date;
	bh=q0iGMd64V/YD7lBBVu+aBZNDJAc0QKamIZZf2WzPgl4=;
	b=AoDCL8vRC0ne5x7zUdUB3rzXH5CFIup7sCJrx271TAz+RczF7B7Atxl2Giv7nhaK
	un7vVwyy2EoHiY3vBNaGTstKc9LNzuSsJ46r/rFGSxcNJ8yq0sIJj4lWm1WPZ3fp8Jy
	Nrf/xHLSlklS72Cg4KjzG0Pu7gabxDWD/x7Rbcgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653918539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q0iGMd64V/YD7lBBVu+aBZNDJAc0QKamIZZf2WzPgl4=;
	b=H2puagNuDvzVavEBZvZcoE6Npjj9k6X3IIxbjYZStBUUbzAh4f0JcR8MuhqEG2A0
	Kl2508raZrHbine4EskSm2alpCUwm+gPqBtqOkbtrPbmDdnm+zams1pAPNP8HXKiCUV
	uyBVOZRJu5KzJTO7kR0c+O1f5U97pyRYu0JwLLNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181153a1dfb-1fcae43c-3852-4bab-b261-56133597de10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb413ae2822b4a357740a9e28173220ae055399eda9c8a337332d1ff59ec0688
Date: Mon, 30 May 2022 13:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653918539
