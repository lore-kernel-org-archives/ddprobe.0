Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D024015A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 11:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8006FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 11:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661598652;
	bh=WLxH3UHJNiUs225nhILz2MBJfApw8bowaso6QyQpesw=;
	h=To:Subject:From:Date:From;
	b=d+2JXUshkpvHtY2OZziH/OCsy7kH+GZ7eBNEKRNOYR+Xt3m8+5Wl4lJNxcRCC6bWc
	 uRwqG1mK2DrWxxvx7vl5+vYznz/byda/AkD1Hao+oJ9EGKwTSvbygxAj6dvBRhZW7v
	 djpWk1uuULBa+5iSumJ15PmyGgn1SHvRhaqE5tRDVQ0fK/7/n1fntpZEyNwuYIJavC
	 sRWPw6jYA8Mp2ZyYflEZcBrPGz0DNvlr9y9r0b3APu4++2BnpFihabRzFvD3x5bTBH
	 AzRVF3R6jsoY31WkqItlNQtp7Xsc4Uvlxbqlrbvfs1DX8Gfdcx/cQhlvCtmcrj3t2M
	 0WFeovztGCcXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D523ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 11:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166159865237.615.4530197741126028882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6a8f4d7ae9fff57756a413d68b401cf7809ab8637eb8ace424319b0936dfc4
Date: Sat, 27 Aug 2022 11:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661598652
