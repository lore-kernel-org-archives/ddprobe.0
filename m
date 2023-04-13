Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5AB64E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 05:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E57BFC433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 05:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681365425;
	bh=61sKIPAp/Qw6INExK0mFGIWpiJ76Z1DpqXCIaFeNuwo=;
	h=To:Subject:From:Date:From;
	b=HM8Lhmibh8FSdJNIOdNaAA1no1KQYSuBI+PIuAhz/JmOMBT9n9LHsbQt+iLcF/PQw
	 Ew9mtQAb1zGq+2O5aSC069H+fbO8ssUOW+SH1wDlLg8lTWPAphdd4NrQwxDsrxBpjV
	 ZCA6edOtO54bd5r3t0bfs9S+XQHg+YUKf1kB2giTdfq0u7wnlplAS523m+JKQ4A7HY
	 wJgbQB/gfOOTLTFwrjSg1ApL7t5bsX+Kq+0rOshwGb6uUic31/ZdUIWX3hsjOXLsA6
	 JSYRla1O6V7uIUWq1rp2EMwhBiZ6xCnD6/liYWeObdWHvH+FMAVAzlFiK08Y4iAQ2D
	 iy+kHmS5L9Mqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD917C77B6C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 05:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168136542576.2359.9081123558107036816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ebf61d7656b1f2e23d0e675e065ff70612407117292f1644374f4a394216b2a
Date: Thu, 13 Apr 2023 05:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681365425
