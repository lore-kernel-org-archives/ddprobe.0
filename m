Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D2D3D8C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE21C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688973428;
	bh=MfIBeyIky6UiVbbwpFUqMD0JoQJOHKW4gFLI+5jbnL4=;
	h=To:Subject:From:Date:From;
	b=jSnq8nq7eH8pur/1i17fGCdVvH8X3k3oI71tvmZ1MjjlTV0r8w5krPVXSmFXFgnFa
	 TOMuqZCqwQ+S2oyGgRwKkN9PPunX8KiWIL+hnMvZtknmwIbmwsIrOHLB/UcVAllbL8
	 own3eoPUX/rXJqrdHnb8YB5bf6hfhcyVpVhsJZzYqiqRfL5HaKnYqSB1sxdnRieHa4
	 SViv4PzfPlWkacKtI1sLBjrbigRtPEM+KSX1yZ4l4jYSretv4nlvRr3jXfOVeJ2Xxf
	 N5JyBtJ1TvYS6EXMrfQ1j0L87gS17TJgE0442fdHIe87HNAlIAYZRyPqNPRy4gIIRh
	 55OlKTeZ3Kmqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE50EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168897342867.17291.15808160814693849942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59f7ba54ebe59ef9254237c5a45f2a51e3d064b662554ae1010da5f62e32f47
Date: Mon, 10 Jul 2023 07:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688973428
