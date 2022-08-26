Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FE41FB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 00:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70849C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 00:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661475052;
	bh=St9r/rIWZnYY+0fNvQtYwBX/O2vKab3V/tWV/JLtBn8=;
	h=To:Subject:From:Date:From;
	b=WIaNeZ5uZTdrj7Mh1ZolyPtX8To+q+DxPO9wQE8pV1+R/V0go6cT3uKZ6YR1a9YZl
	 wCqOV/jjsFkbQrTPi4g1hcMkO3R6bTlfXX4NGzf7ay+GMbxdu1KzEgGFG9WasQ79Dc
	 TQrO/S9klpfX+ZHRmpz32Ldt5Xz+5DscfGGARYB/dfcFF2+GnTRYDPUcYNgFMekkNC
	 o7bDrsR7QXQ9T3dLOPsxyx+wSWwUunuvDG7f9atwUpGbiYRw2AGhtPEVlHWzin120C
	 uqPj1c+Gr+26fd8kS74kam0gMhezZtw2iw2P/rCu2GOBObmJHkIy4AuS2EZgFrS4H9
	 uvSO0cumo3xxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB77ECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 00:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147505231.20516.17443709691245810018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8f4028de403ebd558c2bdf0143752533a6417dbe2c02befac06abcc411b875
Date: Fri, 26 Aug 2022 00:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661475052
