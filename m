Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A2B6ADB
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 15:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2B2AC433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 15:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680880806;
	bh=9/1XAIw9FyX8CTbeJHAf3neXN7MHO7D1F7/H1ts+3Zs=;
	h=To:Subject:From:Date:From;
	b=VA8d/tf4ulsCD64fb60ipFAKb1QzfPD7exgOS6ghUXQPvnceB+QjfXV+sXbpEKAgu
	 Ambdv1GXB5UuRwQ4luQVIhzOIRo9SLbW79gfNvI9JHpzonoHBhtuA3y5T80cUHWWnP
	 gPRwQPyLLUhXY5IBScq+gpRLsUE5pBkbMvM4/lIbQJ/byVreSV1xZweVC4a8dxGp0t
	 lbTEF3eZ5lH0jk06S60uqO/Cth4jh/6yIep2m7Yhz4CGy0EHI94mqGQQh74U+DtDR0
	 pGE4QuVuHmKdaCCh76kEHaPkEUdzj463QepYtVjJSWpulgcb2PmnyvUILIgRtRmfo7
	 202l5VyGKLN2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DBBC77B61
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 15:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168088080577.17201.14146151910575598129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0cf28836bced79adc6f257767deab0b25bcb93390dc9e963e94e8e64e8ac497
Date: Fri, 07 Apr 2023 15:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680880805
