Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E9763CC
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC081C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681681025;
	bh=H0BUbQwn1dp0HX2Id18Y1z6vVyLFy1dRHFiB0bq1nW4=;
	h=To:Subject:From:Date:From;
	b=gtvufZae9DfnCHjzHOV1yCuoFeLNWhsMp54nVg/amsNo2mbqe4Vmr1aHd/a8Jy2pn
	 dshNjXK59uH4LH64d6s9jdwBlC8PDK2tPPn4fygqf111loUnlhSb1Xn3FpoN2+9LoU
	 Kicnd8HJV3s5VBwWboa2rJJgXcUgzGunRcJCg1+CEwKM5T2Yr1MlHrIBXSlvVEWlgF
	 DK0JyLr9aC//xtAAD6G4VypTFxU7FO0/5bkRzGxMEPzzJYxGHO8nFCVxZRMo4l9PHz
	 APzGIw3iI2b8EbXzZjCiD72Gsz47vwsxpZhIPzw+FBSd4dO+cfn5yzb7q133Q1hv/i
	 U95Y4Umgatq1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD2EC77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168168102576.30281.6611967159396669837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a213c64c734a8cc2cfee5f0cd0797c88f3d3c4fc79805ce8b8e800aa764397
Date: Sun, 16 Apr 2023 21:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681681025
