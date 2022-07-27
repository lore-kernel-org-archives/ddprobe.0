Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5A9A20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658953852;
	h=To:Subject:From:Message-Id:Date;
	bh=epdJttQle9lA8t84cBU1VlrSx963wrmS5yFeq2zNlF8=;
	b=hQTwxV0ktT8Nqu7bBp0bl2AL6dkJaIZOaiaOUiAvi87TIHQHFnB3km2hbiLRSgim
	r/7VDb+RCd+ax5U6Bh9hZ1UVykocwctTRRbZBHAfim9GaxZNnRfFyBNJ7Aty5SSTAbw
	CfF3FxSjln6VTeCb1VGWBr52H3FXe42/gLLdsKIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658953852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=epdJttQle9lA8t84cBU1VlrSx963wrmS5yFeq2zNlF8=;
	b=NspL8dloPxaofbFEVepC9aoH8IWxlOvDAY36PwQONgeGk/w/CLkZZFcY7/EP7Lbp
	pcuMrcWMDwkkZiuAsQJYPuvpoGVC96RGYVBMK0Qp+cyQETQkFMHVjgqs8O1JSbJPzuV
	DIhfb5+LXJn8psqxoOgQz/LuxX+n8Q0WmULaJx18=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182415ae696-c37f3b7a-af27-4852-96e3-dcf41bcccfc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b541351751d3a78c7d291760002f0f0ab3dc7c5460666a8a1f72ca8b611aa25
Date: Wed, 27 Jul 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658953852
