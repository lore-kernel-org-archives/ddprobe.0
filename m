Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1761A48781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKxpOBGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E54EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704891496;
	bh=hU49k279MX6vuh3f3yvej3ooKh5cDml/azN0UIobVZo=;
	h=To:Subject:From:Date:From;
	b=sKxpOBGci461slNvCEfMUhsJKACyDzS81K+vI1MLFjteVK4fJBDLCn71H28I0HxEx
	 XyLw3j5qm88mQr52Hjki/WG8D/aY0jkyjkCwhAp6Fh+PZtf1WUd4CXaPVemIpzreGo
	 ItHm5CyCPsLLiGVOT9nX0iyGvSFq8pQt1jrXGpX9eqRkf/J9okmJf7XrCeNBFlJGwc
	 /MYbLOWX+D4ZoV2O1rp36y+7Wer9WRq/SHCBQcHbT37vchOFnFNVRoDRuzkYWre9IY
	 sQ7bAKntUKEy9ECSAn6iA7imK5mSTjShpdoIS/4P/eYMf9QG5rl4GmCO1Scyvi3fD+
	 ccO7Wm9NUeGyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 728B4C4707B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170489149644.23224.11688222405305442682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a26d7499435dea27c8bf446c2d2b523ad4bb5d39446a57318f7e5da4f10ceb
Date: Wed, 10 Jan 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704891496
