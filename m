Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871D563D7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 10:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04DB9C433C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 10:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686996549;
	bh=qWMWk/QPtBPt1Ik7lS6vf1VKxBM19FmtLCM+K5tn3jM=;
	h=To:Subject:From:Date:From;
	b=GhwmV7pnNbnhJeqMgci9j2t5rFneUzojcRIWelFHpBeLorg0THCzpSHbI2SmAbf/J
	 5FUrnqNH/kmsZgJ/E/dofNRTCZ5Je/Stfp925oeeHSu6EPmfcpf416rlbq0e+LxiMi
	 D74aplWI/nlsuw4tt3kPJHvhRAYkmrMdHu5bwXj78LOXuUQo5N00blSgqJjiqi2MPc
	 TcUj1APtdcLTzFjAczL+zoYFvSNiUBzz/z5GfO1wQcdRxfKDdD80XMGVPPomg2fAFD
	 CxrAGMe70dVvP8mK4FnRJ/ILIBMcSgvOVFa70yzXQY15v6IpvyRtudAK3URuwRe0dR
	 h7GUYK6OzYaVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7616EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 10:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168699654885.7569.478452082754414065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7086b00d3cdc8c2c9b6c8069ebfb4eba689220fa2cac471d43d555d5744a3f6
Date: Sat, 17 Jun 2023 10:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686996548
