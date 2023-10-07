Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6495C1369
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 02:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYn6Kv8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5B2C433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 02:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696646828;
	bh=6o3dSG/HX9tB59dRa1onITzSifG2J1Q2GpiHL0D9q8o=;
	h=To:Subject:From:Date:From;
	b=QYn6Kv8ll9X4jGBek0eyyO/fZigmi6mFveN6TwJRjEJ+Xerhpna5kWI+LbTyvatZB
	 1QS5/OWEeRz9AqQXWmk09sLROqlDRK3zSgBRYU8vc1G4OVyTvCmGWEBjtj7NjhXv9l
	 9bHFkWf9ZP4LpgQIrpBUQsgERxakp6mrIvoheTxhwGgzuYzIW0k8UHfKAIl7tJTtaN
	 i9AJ6t/PUqva3lz4wFtZBrj/YwfDjDr5YjXC7hYMx5COsQVydjVsQDuz361KlSooXV
	 eSThCglMB99oTjEgVhoGpv9glTCf9uEra0kRzeFzn74YuSfkCBupwjkR5WuviV+rNT
	 8+Sq7zzt3g85Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9146E9413E
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 02:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169664682874.21230.12841218546975628154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff43241b8ac345dd1b56f5aaf54cb647863ffd615ef5626433914668dceb4b86
Date: Sat, 07 Oct 2023 02:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696646828
