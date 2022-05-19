Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB8ED1FBA
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 10:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652956319;
	h=To:Subject:From:Message-Id:Date;
	bh=RpFn6GoCppAGEv87CTB5fjBu9DcMfEJeNu8hEwcm6QI=;
	b=PFWzJsI3nLjOW3lxi8MjagxgvsuUM6cu+qsMTVLmjgkXa4q6UtvwIZ+KxA7Wemhh
	lD4B8ZFM5laD2+A7kcBTeRznwr9LYIQelIZ5KZOiHUNII++rlMPYbbhwHdAsuTWZM70
	z3aFMaFwajdlBMnJ7etPEhHZ5xgto2XB7scpsdnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652956319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RpFn6GoCppAGEv87CTB5fjBu9DcMfEJeNu8hEwcm6QI=;
	b=ig78DOjLZDtd/uugREYzH2PTcOXbRDTH/vEy4kdPPDSS6/nJtcu1C3/DcOaNos2Z
	lZsLT9F4a2zh3p1n+fYHHgZ45cQDS5vlyrzlk9gBdFTWcMEXfeIsdjM+sWxRDJXKO0s
	FBWBoalJiHHvjQWOqFrd/FpzkSsVjf+QaZ2ej4w8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dbdfce04-2abac99f-f842-430a-ba7c-47d97209ddb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a13f590ae073982f07a9a0723cb3b8678bac070ab960d588b816a67831227fae
Date: Thu, 19 May 2022 10:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652956319
