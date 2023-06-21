Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493F210FB
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC835C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687311788;
	bh=j+5qjI0LXI3/LuXFn4sVP0VG5ODK6IsY1GslmZTCqco=;
	h=To:Subject:From:Date:From;
	b=o+2DRH4fngo/8JZgI8tZDg9xSRCA3Zj5CM7kYUoVNQ8M7U0+a+G2aD4KaDLRLku79
	 vAIGVdysuNnGrXrVRY0B/MkrraDedwD6m2U6pJV/W42nMJeEz9QP7tlaB7BvheFw8R
	 v+gH0e/GyY/6ZkBJh4Mgel7z57ykAxwNAwvLhojgmKOD0RD5M/yal+DFNL4YK2mYWW
	 t7IpnRrKGvZ0RNWi6o6AdBL5nemIwGMa1zO2e1TBN/0Hoc8llyXNFOJ5aggVW5/Vuz
	 pT8pWqN+Gn5pkjyOiQ128VatI193CK6EbNitNnsdBkQGaNhcANCMvSGLDlwdvXBmEO
	 bjf3/4p0gr3XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7D2EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168731178872.19784.1139360523913341617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e56084665c3bdcace16fb8b9cf953d5df6f9ef64f4fd4c677adf806ce9bbc977
Date: Wed, 21 Jun 2023 01:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687311788
