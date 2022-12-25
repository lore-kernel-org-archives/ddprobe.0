Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E55463A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89BD9C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671952887;
	bh=+R2cJvparIUp2uFIxNi2/M9O8mq7udmrCSqimJlD1lg=;
	h=To:Subject:From:Date:From;
	b=IHRJJSQwP8JiOtlEUEuUwqpL+NcQqywhkU6XoW9WNRq+OCEojJA6kev7qci0/ZrOm
	 T370E1XoCMB073Vp1o+7y1XvCtmr7aACpNYiFi4i7MpIXnziFtCjj8L9NeCefasWfN
	 X94XcB3PIEmJhhJt7FmJjSy2oJVfxXyG2xQSRv8z/pdWGVhq2WSn9lpS4zu57qauNT
	 4swvWAdFJLAuBsDdeZvmtPKpTycal3iwq1CLrlBmT0mklrnjSp+vqb+U3vf74DTHO2
	 BPrO1X+lG4OVpVY5f5WwzhUxEfxL/ARhJ7tV2K2bf1O1z61YCiNXcWF8L1u/PytZZI
	 XTleKPkAltRNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B6B0C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167195288741.4113.12615341275207419044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e29324df465c0f844e573ac6aee3ef617d27c3f10743df795c8ba64bda19ad
Date: Sun, 25 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671952887
