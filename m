Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF46D4403
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ADA5C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664207453;
	bh=FJPAl0gc8USDSaP+0S0AwkFCYI58khoi/4rPxgAmh4o=;
	h=To:Subject:From:Date:From;
	b=L89MLFdgmc8B7xx5Bl9pNHpzi+dMppWchB0f7fC5GmV2J02oFp8JJkBI3AN2LMFIw
	 NhP1Q3JE/8HKnrDsI4X4NWE8X4vvTgwPy3sJvk5BOuqYe1b5tV6lKCHJNU0Myg9pwQ
	 lEcKyqOEOTywy6I/QWipkdvFWELToV8EKkmQX9ogiXbejxcFwWYcDeixliLHShDwRM
	 kOtcGCtwFf9I3+XsoAvsENsAqILRqBSy9WYV4iq0OVEZXJXyGCPORa6OneUpCoQWgj
	 5LTJsp4mG3D2B+NLEGV+BW42xptx5jEq9UL2Oe2qk/YAr/FpHVA8/EmDkeNyxemKhn
	 FvUoqpBB+h5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500AFC07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166420745332.16528.14242379104545188074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab0acb6a1f1fefa6e6b1280e6b1784cc72ea2e9683ac93931b7efe4d45a361a
Date: Mon, 26 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664207453
