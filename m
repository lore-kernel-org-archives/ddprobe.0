Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AD87F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD9DC433D7
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667841654;
	bh=/PlfNKeWFGdda5mxf0tS95d6TeQlDL7zqAarv07AYiQ=;
	h=To:Subject:From:Date:From;
	b=Iaq4JDM4gTtSn0+bdR6mEwGeguuwrFkLnypzVvGMuI4AefNi1RtHW+ypyDi/yKAX+
	 WK1WFrQjoqqwi1bTWB4Q1yvJhWi5axsmqBUddcFx9upYSqOsch2ua9D1DJZNULO7+H
	 x8RbCl7D2cO83gD0o+Sbup7P3PCKCo/fOqCtg0xKpRcq8iPrYysrAcpoXWpkrxPQxA
	 TBXD3dAO3Y4ffPh+bOQRre6hKJ32kK6ES8VbuXsFVa1gfnudub19TDnqOvbwg2qnsj
	 hL0tO8V3XOPbny3b+LKQQl5GC6XYNPWwd8VtUQfU9s9mTmnPWbajxZ8qFrTNwbLgi+
	 agwAJH/FRPChA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56684C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166784165434.6352.3586573046165364721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4803eb6e2c4b8cb30b497dbae3f8f3d4455d513eac0aa3a1e1d2b6c65e98d940
Date: Mon, 07 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667841654
