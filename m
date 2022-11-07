Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D191523D0
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A74FC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667803254;
	bh=U/WM7zhmIOMlfRmuurGWVderhUwVP9qA83qcgvXkWtA=;
	h=To:Subject:From:Date:From;
	b=SyTl6NBXNYZfSqZm7Du9Xsi+Qx6+N4zJTz/+lIShPmAah0fT5gs9x6S9t4SRMnreN
	 LXVsKSM3YQXE3dpuZkg/B/Jd8bfze5zuNgxL7m+16vKcjlEyCRQ2N+eRrrmlnlhKTy
	 wYCrfn9U0C0CIVpC86gp23Rx3EZSBhzoxEMv3bRKPTqlxQxvTgRb1yJ4tItcO4WzbX
	 5NimC4ni3SYKS/C4c6KUo0zDKdqdqUGfoK9409krreCY7mdHu5zg4yAN1HWFGwTVLn
	 tb14cQS+ASefSGivikr4p2YhUFKGTMKKus2LlZIgSm1J03d49KXQxSenIursmSMVIU
	 80qo/8RmAuiEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CDAAC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166780325442.11418.12346614514551695759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9dc6dd59460386b0c0c9ff214131b4ae551cd215217ea4eb3c65d522a397db
Date: Mon, 07 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667803254
