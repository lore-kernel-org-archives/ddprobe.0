Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9F0346AF2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768141434; cv=none; b=SU9F41RuP5pf51paIgab08IderQohrQEOr7XAOqkR84h4s3NYG4gyhIQkjzflf8Z3Ai9x5RV5Oda3ZEVfF+lE4ESNBmT99RcVR/lJqAJl2KeZF3oT7UAIbA1ICMM1kFMe/TUYocRVmTtYe+wtqVPqk6uv7ZmBv8j+FeLXqhLZPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768141434; c=relaxed/simple;
	bh=jkI3YOUY0/fLBg2SGvGn4ic64xjaPQtqHlss3YiyZao=;
	h=To:Subject:From:Message-Id:Date; b=Ki5S16rdUNugdT5QCkngtF4Tj7zf95LuH+vC0QwnU6yRAMqG2tFHeFyadr/KgOQ95Mnvz9+ZAylST69sBLDmedL9efF0vot1iJdIBGOGOfEMVgHoA4D4HILWYVoGMBMWXz5QTSRr3m/+SuJxgs187FbGnGesV1Hh3KxrC7hfiSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssNri/Xo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssNri/Xo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04ABC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768141433;
	bh=jkI3YOUY0/fLBg2SGvGn4ic64xjaPQtqHlss3YiyZao=;
	h=To:Subject:From:Date:From;
	b=ssNri/XozlZ3tnN89F+Fnm4UPE/5VkAV3YVNzzF1TgPz/XiFpGSm3tAKqNQ5nnq7F
	 zAdE4bMOzY69URg5fpHdwjqCO+w0WZCWpVgFyZXZ90N8n0mfWj2tNSUA9up64KK/NF
	 K2rB9IMpxiYtXqZT3neFvVnTCyZKuV1C6b0Zzh3TK+p27tHB6YO33cn0mlbUSNeCvd
	 kbCsIHT4MOSMDp6cqvJU4GLfhHWywXn8VDIRN5hfP8BRSU9iYtY0qqtxo6lC3wE00C
	 IeaHoRYuwTpXxibfdPlqXQM4+uXJjdNRQ4ZSRLSyEUsSwAV2Rm/FTMbqEsY86MhtQh
	 a0v3Q5+oYTOZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4AD2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814143358.31037.8327392630502730084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affe1c0875797e23a108fd06c21de5953634fe15bcf1c99c71b6d19d996259ea
Date: Sun, 11 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768141433
