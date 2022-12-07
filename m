Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23C333E7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8627CC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670447454;
	bh=BCHWgOzuPSoFnqPZB2x4QXaCyEptTt0EKRX/Clc6Hlc=;
	h=To:Subject:From:Date:From;
	b=tX+r9wj0QshLRyI54+XfP24aV6TT/v4jk9FeLmOd3z/myQAKVUppN3VEGgBcXwWF0
	 yTLs5dlm8DI2gvthfMXVp3Pxu6A2d1Vut6MSg8eyMq8CPCSS1p8Df/O86Hu+sfXeWY
	 gCsaWrNM4aWG3OmaHoNYjIEk9CT4ayibM7R8SY5k3iCwsfNeht3kgHbR6wbBgj6J73
	 dBesCMkAP11T9qW+Sf58pxAucKWMo//WqFweO4Rc1aZpDhShtZyw6+H5z1HiVryFSU
	 ptTM1NIuOWg1FeucSCUJ6BonrFaW3uiPuy7uPKYfWKyvZaSFkCavtXgW79r79yQ+/3
	 dGQW6BC+RLv6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B644C63705
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044745440.21184.17868630103943604845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3aa736875428b2dd684381c7cdd73174419db92d37c39e7704377dd0c67b8b
Date: Wed, 07 Dec 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670447454
