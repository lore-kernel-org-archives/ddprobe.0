Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8BB1FA9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 05:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B15C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 05:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687323788;
	bh=zoO7Cx0ec8zi7ojyYGYwuabTJqqQIL4aVgCLQiXvs20=;
	h=To:Subject:From:Date:From;
	b=QkhD51QfKELAIxyjl7kJGp/LGufohRAVNvwqCZdqwxToHdeTJalwDQaaATrh9S4fG
	 nIEcgp77wOJOEIuF3BP9R1ubLcIB/9ZSWJ4Z4ReFIx26fhPhie3K2w8fl/98s56Ae9
	 MS7JHe8eSuGTQAR2aRnkBc2BYHzWucA3B25df8EHCtVc2cDo+8juZ0FlvZk3/lj8Ox
	 weJeYnM2DAalnHU+MLRSn5+AwvjDWxat+TKflKWln1BUlviqyP/9N6ROFpXDOmRu0A
	 WzQ/BXhj965p4UV8c+/9ILT3i7UnwgPDmNLr1smzxMgbeh8/eUeZ2TMOlCT93Wo1OS
	 xpJbTavYVvRaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAC2EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 05:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168732378868.16248.8568383593321966623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1642ff11c6808cd725fe17f1aa288765777d92d8308dd9c72730c16beab7f0e6
Date: Wed, 21 Jun 2023 05:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687323788
