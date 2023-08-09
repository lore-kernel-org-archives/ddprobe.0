Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6608C29DF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 16:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1853C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691598788;
	bh=yyq0kcmtsfmKGT3z1ypFPbD8oLWxmdFILzZ1t8eKZWc=;
	h=To:Subject:From:Date:From;
	b=LlGDpR0o9jqyM1t6uTZ8cji4f+7lq3ZAfnwNTJ9XGvTR/1/1mNFhe0J4KIW/JUPY7
	 UwKNpW4MFXRWx0Ttmr3PhpwsxbD0O3v63NfNeyqTdYvmMc5Dx1GwT58SS/rzbZGkPN
	 xfMEPaZjmdXv588Ss1xdkaSnltKCzJ8siREKxVZv/cG4+BvcDOtygmfYOr4aOVltSj
	 XN6ejxFMX6eyqC/3LGMByCjIYHiCNu1i7lc8+zmKc5zAYQaiyS0xOK8EKhThG+Hr4O
	 SWBJEvD7AdPR4WFyza5qYZbqIjmGAQN7zNhwxrxNekeoSRl7dk18GM4A+MeDdl7+oz
	 BeyKV8q1Rh1Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FDDC001B0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169159878871.26167.10177392627582950706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2eb14c6988536dd4a9c9a1c15094a0b8461e4d4a663a548d36c3f3a5a777b9
Date: Wed, 09 Aug 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691598788
