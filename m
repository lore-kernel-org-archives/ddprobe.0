Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D96D19B
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 17:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEBBC4339B
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 17:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679677265;
	bh=IZVitcf7foaMNFsBpJX+MRkiGmy4eftqEiUFTcEAd4c=;
	h=To:Subject:From:Date:From;
	b=Vk+CBOCrTGlZofLNqspBUzNgOobGjCmeYs0LU9v2zSKJeFzlR9n6dQ8oJgPN3Jcp1
	 oMLEtHYDo3MH0K0r5MupjZnopWzu1p3mVuUy97mWOp6jflrHQQetEi7T3K35InSo+b
	 hMDiedr/N/px2WmGdQTeOPd1/rNGQejUywi7PBnLiDKHSsU12LExUJ+beZ1Oxk+YKp
	 xxeCRlF1ww/nxV3r08aViqugF40jn4sar76NDCZBJPwzGy0jjQjffhScrGU3C8H15K
	 c7P2Kely4lIFA0fWmwUjOi+CeBSboOu0AxXZsfZVkcl2QvqL6WBSZ14Ol56lqJk69H
	 LgD2GGeC21eTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1F6C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 17:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167967726577.31103.8088028858418754896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52bb857f2a5d77aa13d6b1f76614e9239a0bf5bf746ffa71f39fd390673ae26e
Date: Fri, 24 Mar 2023 17:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679677265
