Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DFD622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAC6C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662702053;
	bh=qNgJH0vfo4r76MUw6FK3UFtMDUH/3r84NNrbu+xr35Y=;
	h=To:Subject:From:Date:From;
	b=J38CO6z6vRyeqcnAfIbxhKvvt9rxV7Q0zU7RB2pWpdpRi/obVZclaPSoHi5WolTlG
	 xUe2BipmuB+CQelWNwUsD0Bl7yWZmH3/+4H03LABwLrsOjqF8aQeYNFdKhcJnBMmdv
	 1G44Wr5J8XBSU2y8qo8nS/5BUeJl4QBKJoc0IVZRlrGMe15gYEsiRzs3+7Y11NvA9i
	 bnAkTzXa1OJ2WfJdvxkkZRWVUVwyEcPaa1j1qOGGujvh7swYGRt08ZLdnbBlbfCU/3
	 x/pGUAQkMstCLMT78SKdTaHP9/CMBFdNN38cKogTG4xbR2b8Ae9UvKsmG9biGOLwtz
	 SO6r3rQCQVtXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5533FECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270205333.9930.15190141882909740405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d50a51d6db0d26f2ce52d2c83582eb269155ccbe1a3f55a624c4793ad97bf4
Date: Fri, 09 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662702053
