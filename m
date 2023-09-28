Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC394403
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 06:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87E5C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 06:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695881168;
	bh=WWilhWqDmxEc1Lg/5f4zW0RfpFi/9j339zxhCivnagQ=;
	h=To:Subject:From:Date:From;
	b=Fp35QXt6wYRWoTO6cQLZmDlyDFSML/48x440mfQ7bWeETG2V7GLK5j/MK/BAQQgTZ
	 vHjO92Jm4eMe5ZBbopGAAKor+68lQJglcdMgVV5eKO4d19RjjGRBwP+d9DEA5FN5eO
	 uKACWddlLM48KaWeAeRTQaP8bXWsp+0woy6jTnU3Vs6I8ZOQgEpC0Zq3iAN6eFptaD
	 csBHwpDjkPV92FG4RzQXWLmdjMBPim0vc2hEKbVOMZq8u3NFvS7WiVp+2PtHBGK6Rb
	 CSPy4XYgVfH/HSdA1Glhdv7XCqDiAcS4/OVOpu4adKIguONO17BUIhdvDR5+K4sxJa
	 +5VqvYCLI8msA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88D3CE7AF8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 06:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169588116868.20335.5340415185929191644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778d28dbb23f7a4da3f9986411864e734101b0b9b1e3c5fdef0af83d9d32358c
Date: Thu, 28 Sep 2023 06:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695881168
