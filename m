Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F4E7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646979684;
	h=To:Subject:From:Message-Id:Date;
	bh=SPX/w+mGkc4u+1Svvz0kDFK6ngiqyCm22scpX1Ne3lY=;
	b=Q6MObLu8NLM5BUhWGfApnxVB2cpGLvyD3ylNO/b5mI9Y+i+Tk/c3C8oTc69TqLU2
	KUN3QSQJ8BlR5M/Y4hhgJvBYypf7xgf0ITym9uscxkhBuZkd8Dh+TWvKgLxoQ5UpXyU
	i1cgdRMaW0ROg7H6IyvpjhmivoR8XwJrlEr1p6kw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646979684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SPX/w+mGkc4u+1Svvz0kDFK6ngiqyCm22scpX1Ne3lY=;
	b=FcHMy4O10uUJs0/kfFTOkf9C+J5FoG+/uzKixFyxxKQ28OQ8jNlUVX2WcPL+VJyz
	HH2GkCRcdAYr1NQKiLNUgktSUMHFosab67Py+KwrLFMzGPs2XdT7gSWEHkmfWvOykGF
	3q+IU0AWzNRheYTdHO3nspgU1SyICBBxP1hjA2PU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77a399d2-cdfeece7-235e-41fd-9cc0-121a698904fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80f4ef232a2c7ef259411421d2ec48af2629623d1e2e4321a741d155172fedb5
Date: Fri, 11 Mar 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646979684
