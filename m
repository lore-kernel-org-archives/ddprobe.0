Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8D27B
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA11C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668357054;
	bh=1A37FgdIyv1IXIaOFrWezWPwu4UAkcweEgQKFdMT+8k=;
	h=To:Subject:From:Date:From;
	b=eVphPo3Y8R2Q1qCXxO7Qjzov1BiDU15eA5KhNpt0Qnsz6XUKKXGxiaHH2lgVZiAYa
	 84u8MwYPIhCXhQ4n4bxwbnjRM0dxc3bj3EPb0oSG1LLDVS8AB5R4qO3spUBVfOBhQU
	 9FCQ5NH6FZ3kqLjkVkOE2ffw8/H6ffPmSCgugiuyejsKyQdxvszOE1j0+RTxEZAVRr
	 HR0i48XvTgb4XnvTvrXDXhp0bMYG1LkT8hzm/83Xzu5m8eWUis7s+2xvi5IA0oLwW4
	 6ehelrlS8V5Txa9Ee/vRKAHFirfSWNgYVx7ohJCspBG25c5He/cbaheTh+rdcmvxWd
	 /SgdHwh88DHYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F8FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166835705434.25374.16794540977433449643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ffbf6334d59550e0b0907f355bfe843b8dd1128618dd248d21e0b696993c1a
Date: Sun, 13 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668357054
