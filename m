Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527D3A93D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DE0C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687018208;
	bh=HUdPMBqQ8sTvmD93vLxSjCNE++L7A9mFobl2rG3D6Ms=;
	h=To:Subject:From:Date:From;
	b=leNITTYWbrloyaKwnlGuWvpdJ/Mv5QHIsOCwlraS0firriPvridRJXX8rxBorZWBs
	 mRtDin4RI/uRFCTjbKq95O6mzmZnvoWliwbp3uME7cq/FUj6nT2r29pkzGRJpItEur
	 Np9F8BGNOmhaQkRzyyYbRVCIlnhlJF8J2373NK+OoUmUE28no4brWCxkJ1E8SrNhHP
	 Ir1mBrZZh6UfPMDrrH7taAk/l2HjICDit2A1jfUuQp65hYmP4C26suqB/mq3eu4w9s
	 R9YDQ8dXTdjRHrKe28X6ffZw+FT/G8YPlH3jwCpBaDF/4+twcaMfYV21b8J7udA5h1
	 RwGTMtXjdIz9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1079EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 16:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168701820868.8965.3612746521083301227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e835adfe19674f6cc93e3bc0eab4a44d2b211be7363b4e754e65897f0eae051
Date: Sat, 17 Jun 2023 16:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687018208
