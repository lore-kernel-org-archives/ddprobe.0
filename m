Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B512F49
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 19:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BE8C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 19:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693770248;
	bh=cOlUhp4JOtwv/Gw0tUGxQHEGTEgauyyp3WT7bov0PP0=;
	h=To:Subject:From:Date:From;
	b=Gq+/ifjB/Nw2lWTU4jCAWkISCaoes9OUJOTF6+ZmPnOn7Ry48+fBOTjjUZqJqIAHC
	 7JCu7PRcrvj4bi3c4PYsTvNu4Qe9/paOtSdAiKf94eQx2iqQgpFkIo/dUlOLnT7f+D
	 rcaZkbVOm/Q9kAQpSCe9ohxFOpo3b7WKD3+kgNo+lqiLSx6ARrBNjt69BKfCXQ4WFN
	 /gIE4Srivq+69hRTSHvqkT4UoySKZpiQSWpciNnn0u0eE+1m/P33agmnfLEqvY+lUX
	 QivcQGQrI6FJXrlTDwTpKNDPGPhdv4/Ve8EXYnar5CZ0D3mbbE7xsd0e6wGNa5sYWP
	 OJbJG51+tJtQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41D8C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 19:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169377024866.24819.9302339710447031109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a3dfd0000dfbe4e635560408087a20529b277760ada60abcdbc987cb98a2ac
Date: Sun, 03 Sep 2023 19:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693770248
