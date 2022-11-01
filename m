Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF050641
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F539C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667297454;
	bh=Prd+kMCO+zrEe056ZvSDR2kI1lnCmBEEGNI4ZFMwtZs=;
	h=To:Subject:From:Date:From;
	b=Zemhv9BoZuAKSxa5LvBHsogiRyH9Av/1Ti0DxmM2+Urlny9MYtYf7Ks+fA+MNwU36
	 cruq6ai5a9myMF9KaGVBIvQuWZQI4fBzi4m2EGoRhp/P3jCsU5oTvbpTeAlyMBloos
	 nkaBINcgTNZask/45bWiPqRC6gH54mz7OhEDI9vFiUt41SCIuJVc9gUkwPuV/UjPe2
	 /GFXcNdUqU+wEXC6Kl4NPu2WWny7Lq3xNV6HLJfleQ02Lh5Sa5/ulp5rqSf5yzORvf
	 +OpB/hkI2nMhUkeQ/r15d/y+UxLEt7vMK5Mlf0BJpp3UIw+IEFyXxkyv3vqYzDHhme
	 7RnkdDOCAxkKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EE0FA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729745433.18791.13949461184168242022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289237c8da150ecdf85e89fe8a00e8f162819b671a23dd6373d5c8ff504b43f4
Date: Tue, 01 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667297454
