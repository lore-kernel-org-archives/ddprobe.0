Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5623198
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 765C4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663289453;
	bh=yuS14mNphFrBJ7Qi8HSaSz8T9DcRIGk61dBouC79AvA=;
	h=To:Subject:From:Date:From;
	b=mVXWvyQqJmBtJgex1M/NI0aC6kTVpia281H0eYwkjjipDGZQJYdWdhAopsmBDhfd1
	 sDCDB3aGDIapkHOmGB9JWJ9m1GOXOGSbXFe0bLELyNGt9XugtibdzfvOLInps0LX1z
	 4QFT/Ya3l1anZ7p0L+F5C9gEVsy1i9Y7iSg37mQc250Mx3zyMnaGRt73YhHof4EScF
	 YqxHnPTCAaCec4DDJYO7KaCHd7om6nIdC3jtj+r6wBSEqFRdWMQ8o1K5dUgjzvvIVd
	 Smor51Xddp7j7x2JnzXUytO1Lcz288e091VwtypGt9XXQxJ1mSl9qwmDrRHJv9C5+1
	 Hgd/4yRtNBoGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AD4ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328945332.1233.18004664341495666638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3212c784ed510a4f33db0ef1fae73f412aba81e5e922cdeb75ed192e2c47ea65
Date: Fri, 16 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663289453
