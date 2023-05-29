Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E81D7C
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 00:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA82DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 00:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685320865;
	bh=X8L2LP5D5J3z3KrovwZZJwLyJAIkJbux1ZxJgRFCjOg=;
	h=To:Subject:From:Date:From;
	b=m5vC5glbeAafmsYzSl3L2Zc0Ao+0b4k52x4yAUx/+RhUZHBXXWlm3Id26YI1xZ0cz
	 DVeoczqlH/bsiWMIcJdXxPAFQ3SCVM/MOyDm3TuSKbvAHucqUaz3BNz8rqyc3nbGcV
	 5l6YURLvzL/MeGY1aoM3ROytbAOWoMcrRdIOJNRtmfZSPjmwNDVJrnW5dwABmW0khD
	 yDXRNI6vDrzulIKLL2L69YlL4agciB5O6nssOr10EJihKSTEBq2uI3zp7thgDcj3lv
	 R36P1tS7QqunVxOf3gV9y7s272Xrg0nsCy08lZ0WfuXWGIAMRWScHZ/mSoHID/GDnD
	 M0X2wIeSmviNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEDDC7EE23
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 00:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168532086575.31139.16715779703790307988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896f9e6e8e81abd2384f5c99aa1ab04ffaa17f134bb4e24d981ec4311d4790db
Date: Mon, 29 May 2023 00:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685320865
