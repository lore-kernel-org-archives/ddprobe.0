Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7ADC8F5E
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ECEFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664044853;
	bh=3sJ3OXbDezxEgms+XIgp0kdYqL67Kfu0OhtcnFYbJsU=;
	h=To:Subject:From:Date:From;
	b=TEzx+9kVUQq7ZddnDtRMeCZosdEBzo86k+IFpzQXXw7pidVvNSoTyXoN0DtAXLPx1
	 R58pQlHu1Jisp6d7SK6tC9iPqZKo93O8B6IyPaT2aNWcI2HooMxgcAG7n/qRbGD/bS
	 B9L6cagJadU6+4GFwd/Qkuqn3Y85SYEfvK0RUxdDfJzMjfG0QLQ6hnKI/VC1bVTyz6
	 xly6CIRaiM4HyC3aODb9WJnT1LVYrjLtBZ9i1DgiH3pTjkGqWXda+p3Ziav4iPbH01
	 gMOR0L0eZkBkywhycivqNMd6D1iCER09mYL0rWeO7bci6vXQ0vWNBWn6ejbKu+ZTSZ
	 hTUvGU1ykjOUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DDAC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166404485331.15272.2667783337557540384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7e453370d17ae49ed78ed34ccf6f9f3b77ca272e006e8ed66b5ada642df06e
Date: Sat, 24 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664044853
