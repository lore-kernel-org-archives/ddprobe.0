Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB06320E2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88EE1C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671999687;
	bh=SKsRcpKsAemOGSon7o2ieb1PR7orjdgM7/555xSFCbM=;
	h=To:Subject:From:Date:From;
	b=lsDO/gwlMLp4Fi3ohkAFalekNcVtPkC+Jtk/JKFqPpN/ZtVcW2QUrvEd8txbY5bvt
	 lqwfxAhhB+L5L3I8acZ7FrTQb8bmQuHKPfV+1/XVci07J5ux8m8zldWnyf3TAy74/V
	 ksPtVMXymBTM5ughvI1hlOieW3CM9t5eD7Kyw5IKY1FCyH1d8KQN1v0j/iNbJszlot
	 grJukC2vBYIHHu2Qy4fsHiRpz3zy6m9K7GuBlwbh9t+A8xvFIVv6sCq5WwVnJtyq19
	 9sUXPDp1H6IYDSEn9+bpQnfET4P/wFS41igzsO7WwEAetGevhtCOFRQd5lWcjz0bde
	 nx6mpzEnWigHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D13C3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167199968740.25779.2932353988325040770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba9889a85aab9fd6683569f148d1be4f709e4bf3df4f1ea8b7304c00f5b2e54
Date: Sun, 25 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671999687
