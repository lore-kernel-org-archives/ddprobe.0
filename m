Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7534C6AAA
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 23:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE463C433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 23:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688426168;
	bh=RbJzI31D2S6Q+SCLRk+yTMmfqKKjaGsqdwlUVAb4Dew=;
	h=To:Subject:From:Date:From;
	b=o1CBGQw+sF4SmH+64PmFhV9/QgGZkTgZJS4TQRspLftdcRHNGlkUJlyFVFKUIsiVu
	 /iDQRa0vpixgmgCyRp9RiB+EKclwA2EMgSf5gRVaW0aK5bosCLA1b0Soyov0xT9PNg
	 w1MJsJGX1Iwkc1k1MKdC6NT6PCoFUBKY50SJFL1VRP49hBwXPZ5X8FSYQuey6Zg4kQ
	 ChIFH0zNjFIIebsIDU2zSdVyVjxvabFNTpZK3sVtMMDETMtQQg/RKMCGGAQIfBHU8H
	 lJji+e9KQCRZmXdFeQQSkxSbHacaEa5KFwpwjHItE1NNFg2+NNfUMHWjbhmnff3pFt
	 73lQ5MOTdeZWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA2DEB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 23:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168842616874.2010.5265966261719975191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e09f35c3ed2c8d4b5b9c99207114f00c58dd00a095e58b4b3dea9db9f794c92
Date: Mon, 03 Jul 2023 23:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688426168
