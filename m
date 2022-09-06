Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6879173
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C174C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662424853;
	bh=y2W3x+NPswJEPnexJ6jXKQ0P30eCp5o/FIfPagPt73w=;
	h=To:Subject:From:Date:From;
	b=JaKqI3UvM7vCS7WWFIZpPDyf6dpmY3g+qlqRP7A4U9+PlidfVASv+lGORol6O4zZd
	 YE1QG4GoPB0j8uvezr9TLhB0+c4OlPX2w7pH0CRQK6VnpnXoIOElyUSK2g8B7c85KZ
	 5yfQCQeAZIkPHozd7mLsR0jrZg6jJlhBiBLuKIGRWEBs7I1cWKwR2BfBrcEwNVQCtz
	 h51Iesw5/drkYllxd1SBfqFGQHkgtFGRSBqDxEE0s0VPUg8AdI67QudZ+eOUSCI53/
	 cyS0gk005cs+kzMAH/ZeyjiXAuxWz8aywgYr6t2fmg26fDQHCfCdlUR567tbbZUrPc
	 Mg1xpoQuaQTGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5271FECAAD3
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166242485333.16311.5118727349964994328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f51404bb1c13ffd9bb9c0e5e78b1ab3bb709e1d7744d6fa2f24c4e0a5c65a84
Date: Tue, 06 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662424853
