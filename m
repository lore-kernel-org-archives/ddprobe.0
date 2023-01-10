Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5E217C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86619C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673320287;
	bh=kUC8meVCWhdYzFFDKqb//B76LtVfoF1bbYymXHWhphQ=;
	h=To:Subject:From:Date:From;
	b=YIwqXZDLsSQNSY1JhoeFZkJwhRgIDwztGUDYEBPJKz5TATuNbLgJtkcmY1pa3hpAW
	 prpwTEVyt1WIp1DFyUYpTY2BjcZtkeT75Kj1UNeQY00KFznYc9CmlAIn7g8Ogajhsr
	 ZUiCz2Mv/ZsRaC0jr24iXXR8GSnXsg8yOiebYV0fau6EdflIRbEaAl3moshi6IYUdV
	 234203d8qtyj5Rcw4nE/GHBOBRJf3eTW68j0qXIGe4lud04uVuPlGmYb2cLv6IfHlG
	 7Byy9eO5E0k3pPDvWw+gwA3eHhrMSk0WsoVU4ecVkWiR7QzdPvLC4bZFbT5a3lCUuh
	 tRGpnbpuuXHPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C9FDC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167332028743.2736.1045467742473124669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 055687e0be6d57771b9a2ab1c47281b473382253d20e98db976bd3c4cabe5076
Date: Tue, 10 Jan 2023 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673320287
