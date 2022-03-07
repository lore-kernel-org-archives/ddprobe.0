Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E5938E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646645185;
	h=To:Subject:From:Message-Id:Date;
	bh=jZ8/O4lGoU90qLgNCcwKntkzZE4qTNNozCwHnRTEybw=;
	b=OpbVdj5Wy3I26O9XSkV2QJCAP3MoC+Eo5B5H3eQDddoC5oCdApKvyV6YyYzXovoO
	LRfLD/qJ+2KlrmFQyGY+EMWNbItgmdcWQszpUrm2etItJ4dc88YkIcEjOCsTsK+dqS9
	3Swg7u1y0Y+tNbW+Q6EmUg0DU8dBosX/uErgPFB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646645185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jZ8/O4lGoU90qLgNCcwKntkzZE4qTNNozCwHnRTEybw=;
	b=gCOkwa+0sFPexp4P7xs9+xQ4GfY024fM2oy2DnN95mvMg/vFZvyFcYlHJ76wVG1k
	ma8iv6ISbgJ1xy9vzc2YxITdqHXdJn/+dL5/mQ1mMuoD9g0Fv07TVn0fnsaccGr77p6
	g9AhQ28mKXR+4EJ9C+2Zkquq+/qzG+6KuUOWS7Wk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f63b38931-439bcb15-bfa6-4c64-89b2-a0689e798ec4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be35945cd439f8b2bd69bebc440110324f18af88c1e5f688a1b4d17f35410e00
Date: Mon, 7 Mar 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646645184
