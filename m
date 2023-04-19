Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C2B3236
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 18:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0948C4339E
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 18:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681929306;
	bh=CAfa3hZkRigJ9xLv4J8CqB+om6oRn9MwkeNWG5/9U/w=;
	h=To:Subject:From:Date:From;
	b=skt+vtkxD7hGRSxBqXk5bnrqRsrigaBQmDw30Y9QvCurXr22kNksT5yIcNvQMezRr
	 JmmCuOg6Ih712LWNcaCEQSAg7Ndhu5KiMFU1kq/Bc4dyT9p8Ko52Ty8dBDf0WbmSM9
	 DenrlPnMGDvSKXEa6QfVxT27ZLhAQCRVFKSWu+F2i//76YNojf/QtVhw1sFmzEVH0W
	 +OGDnmElzkUzaeLQSLm/ClC5YyvloUQ6MZGvOpz/wgnpTLNmUn2mFIW3HG1KnyGODF
	 79pY85djwgdwdO1z3J+fYS+Hpg9ODp08iFd4bgV6NyMVH6arYqrYdxRDYio++ABUg7
	 jskuZIH4HSC0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38A6C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 18:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168192930577.4771.2978718855890427803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527062c2d9ff5517058b07bc84795fd37eaf8ad968a6965478665e9c14cea582
Date: Wed, 19 Apr 2023 18:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681929305
