Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DD515BE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 06:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F22F9C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 06:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686465126;
	bh=LjP/Ngyt3wxCQH/Q352Hm7/KQOT91HoGIS2eCOqC3kE=;
	h=To:Subject:From:Date:From;
	b=oMkJSTeaI5OhuXjHkQx3W4qTurz9yVgLLyEWWAIDSEDaCyJHmKiIboWO4/+mxUH0x
	 fuzLJgyd0qXlrtfvkloFNBuquFNOI1dD+IN3us5lV1U3sWqHSGNaSJDaIkfY3r6VUX
	 gRTteM4YGBWfELV/jiXmx/MZAC4SYH070npPeC8uVFBjUX5ZVBD4sFV6MdKnhI77/r
	 AOJdnNEV/pC/NHN+m7voFlAjKEG3Sps0lrsixLyc1wOJflC5znr2jsaALw4bpKEO5V
	 Wf3KbCAmNIbcAwI8+g8M3FXx1g/Sq0Lh7yjNpvPNXvCdsYvSnJmcehz2W46PtXi0ON
	 Gds0wtDg6IyrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC6BC7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 06:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168646512577.25244.14487313253214517641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851bf0e310ee6c477eec3711e89899ad507399fecaa5d5ec2f82a3534487d032
Date: Sun, 11 Jun 2023 06:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686465125
