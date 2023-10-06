Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EE542C13
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTfGN3ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5E1C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696629428;
	bh=8HRXyhU1WL9MFAUDaB8WNcDRygBU8p+RelXhVtDc33k=;
	h=To:Subject:From:Date:From;
	b=rTfGN3yaIkOaMo9PhNW2ZLpMP/j1Df3df740Rn6HiXbFHECegFYzckYYY4j3zsGWq
	 lQVNOQMqAxhDOK/ErN3MaQWu61/1PXW/mieVWDBQB4bUvqJpESUDjMpjdLQQXcqEA6
	 rIfmawq/BLft7iO9gXP8bR0YWall6Vd/LgIgPEH0xvIUeuMk08ZZjY/2wwHV+buNHY
	 f6DDYGTu1QTvcwYAdJ/8TtoxNagNnwoJviSObcr+s/30RzfyqG0oY0fmSoi2DQIrVx
	 9uPkyJTjRJIbc7oET52aEXJRbAhLN5/Sd/2WS0ygz8/w6vPwPdbxoXTYBuskj0Hdo+
	 buBF1mx4xhrZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DE3E94131
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169662942872.23647.16640107104863621080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d209fdd647ae0541588905554070e1e99a4be82eef93061056de73a72110af2
Date: Fri, 06 Oct 2023 21:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696629428
