Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC12F7C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C16AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661719252;
	bh=vT9FFwsaq+rFnKSsl6cKCeGBIhcCRnUiaW0KZxVCjJQ=;
	h=To:Subject:From:Date:From;
	b=lBdJ+ckUYMHZ3YpriaFKNelRtaVm7vko2BdV+QfMgYHzZZ93Xcz0/0539mOobihw4
	 EpEXSiZU82pguqhDtIWVKCqPN5Upnl1peUWZRiqnLa1ZAVzCNcgmAs15sxEK5T/Dd+
	 1ZcRPgR7y8MeouhKkhaGB/urDrBS6DuSk7z/edUghbOT6qecLLxPcqHjWU1jGgh+yC
	 +IZU84pI9JEtwkMJc/9r7S7UwUFT+YmL8EOoUX7AuSb3ih/Q28P8WQYYVar+F8jF6Q
	 gwPfaWY4ZAAvazay83KQq5ZuVBmfONsYZgkxjaZX7MRHk7q621qfm99FpfFef7Eu7n
	 GQsuIVXZ1Rxgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55665C0502C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171925234.8593.9333232648051107678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69862b7d3508dc21169f361daab3d6a4897dad20387acae27ceb40a55c5e19d1
Date: Sun, 28 Aug 2022 20:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661719252
