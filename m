Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4616C3D68
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 23:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1BEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 23:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690498928;
	bh=jaZPsRVifwdEZ4sCQKqnT5OoL9nXFE1x/sJBpVCMoU4=;
	h=To:Subject:From:Date:From;
	b=Djluyag976aOIkDSuG2GiUaWJKxZzqPBPTyRvWsZMzJXsSPC52XadscTRa/pTgBvm
	 ajjd/n8OVZwFhHrC7Mjgm8tta8R+qNvoMLFTEZ/DyGCW1W14aop5y/vROz/qOWHu9u
	 Rjvs8KhMrmOFUaYiv4Jw5SXhEmGfyvT0ExRgHxIt5ousZdc7RTNDInGs7FkoWRjOI2
	 oyyVdzuTBZ7EIRGQe/h1W3AQX4KDhkIZSgxcaD6iTT24fCQdFNbnSSZUqy8LBwLyry
	 eyEM0BrXApiRTDWbf304a+DGljHI8z3Pkl37fjZaNCUZs8iI4bDsIVhS858HzL6i2B
	 PduTy3d4bHNFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F4DEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 23:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169049892871.32265.16504707994581143712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b647ff6baa159d6fb6bc426cdf1ac7a872ce4f0e1ba503242ed17d6c4f08e8ce
Date: Thu, 27 Jul 2023 23:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690498928
