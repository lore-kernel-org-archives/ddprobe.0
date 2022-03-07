Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99EEF7482
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646693485;
	h=To:Subject:From:Message-Id:Date;
	bh=HVj28Dnf8WdQUCv/QtvtGxCsJmQsRO4HjL+HqddO9po=;
	b=h1kwadljGNLF6DXIJm3koNoHSGFu2GfxbVT3PnGn+URGOsIhBbgLhlgnnoa1c1mB
	nB5J3PVYZPkBfZI2gpdCY65IEqM/x12jUCgn0unZNZ1if6FnIij7yAj7IafaCsdBn2/
	B3cLMNeUDQjPkWsk4OVshn+YAycjeb7LjaBoD884=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646693485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HVj28Dnf8WdQUCv/QtvtGxCsJmQsRO4HjL+HqddO9po=;
	b=U5R8pvHwKB9wcKgl4KRziu8QMWpSn5bhLSpfOIXRnJgDJykhGISMzKcU/NoAqf7A
	eMdQL1yPRA8TK9KHTlU8aVDCbNdeDBHPVNgREgGH6bV/C4SgeuoiGQ2hotjQoMs8QQf
	7M1uaJLQkRV9Fw2x6dpXiCqZa7P5H6wKoeVDetXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f669488ba-93b12c57-174f-4ce2-aa93-569e6afd6ab3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa494423520edf8e9f3ced3755598e18dd60e42dc560b53cf9f6d073bf334f4b
Date: Mon, 7 Mar 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646693484
