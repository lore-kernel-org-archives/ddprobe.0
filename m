Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1592A41
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD30C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671397887;
	bh=eKSFKq64zCZJcmEHfT6wvgt9JtuMpUsicO4jTVB47PQ=;
	h=To:Subject:From:Date:From;
	b=i2LgjIAcf7iEiyPTOAIai+rZk/7Uiyb4XJOZmNPuqrTX9XCMsTZXjEOam0bAGxwUD
	 fs/6r4eEnJ0JnjrOmgmaVtKzFXK7pdGxb4DCIre8FlfyfywAMcnFl+W0fotAcFurGQ
	 hDWwgQJwjFK4rXEepZ0ic3/2/4UeB+Zo1y+IBpTxJHkCuV3lHGBzhqeyi9oO0uffMb
	 UMlA5o8LnlaE8aOQFeyL2P1OolPk9qYe0bWY0Rt8C7ylkV4v/0yT4iYzzdhMvktaEg
	 JMGsnky18+hzlwW83zmFsKARDOh1dhek424p9reVhIGp4TDUgvt4HyQsVzyGVRSl9g
	 cHhRBG35yYC9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 633F1C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167139788739.23342.6472512607171059479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d38e181df35fe68fdf8b441a348ab06654cdd75f37ac2afd93421cd1aba44d4
Date: Sun, 18 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671397887
