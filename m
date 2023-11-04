Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28171A587
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0d8uspQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AA8C433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699105696;
	bh=YYXdjB6k6tgvsUdv0G2oza2suKzX9fRCXbYVn+gqi10=;
	h=To:Subject:From:Date:From;
	b=f0d8uspQygWaIREy49li+C1qlYiDVPgwbUwZqH4/TKqRj0l4RIoEapBvFDzS/y+qv
	 ycrdqrMNOOGrqadojj2tJ0n5MaIbYd4rwsN3SoLNfqLBIJP1po2pi9Bed+4jJTKhWz
	 mxhNvV28OSLC/pOP7Jl7W8MZ1ZvkQA8XxwcmorTW0TQ0ATQzitcMz56pVes//896NL
	 CgCpQvwACEWiFyLKI5KSKvzrrzEonllzd4lVeBn0NYbyiwAQbjJHSd8j5yb5CrblZE
	 E7Me6lXHNjCFBg2vJtytIgHJ+hE3I0fLI4g461LM1HzcxvIlKjzg3Wj7NFPapf999n
	 4jq9A/dv55YWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8F8C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169910569638.30916.15203425633854019824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d5fbca9f4d9af6f0c734b315821abf46b718a27e8e82eb74e241c16bf64bd9
Date: Sat, 04 Nov 2023 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699105696
