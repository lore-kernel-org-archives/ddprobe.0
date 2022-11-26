Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5A517D4
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81528C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669478454;
	bh=sXhmXj80Lg+XXNdfhpcusKaE0ULZlCwbC18Q5fTl+Wo=;
	h=To:Subject:From:Date:From;
	b=ONcnaL2FNwMKV6kNXQCn2pgUEOHTBe/vqN5pkCsKZVt6krSuvb+M0ndef0twgZPci
	 +wz86v1eUgh45BJU+mS3P0cVRxtPdOJGKCN2gtnF7hDwBuaP7YgTPwfm0C+WAH8Eu4
	 KdJKyFH3ojJhp9654FlVCpMPs61HdS84qFYvmMwNh/TEmJSFLMfYDI3VkzWx4N6atO
	 R//CBHsAL0NqAEv5PCMYFgHm7VxUulDtsjm3kSFSbm9M1H8Ad7HQLAqAdPGJmOvi6K
	 XfA1m+RM42nStWoOzrw+ux40jibx28i3wx8HYJMgwzmrag9N6SbQIqgJJziu6l5HVp
	 Dzw4U6tFAWX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B8E6C4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166947845436.15955.5681660269561694045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c90b0e268d5a4e307097343491d0d12addb5c753a715bef249df1770f136ba8
Date: Sat, 26 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669478454
