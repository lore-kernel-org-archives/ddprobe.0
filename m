Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2BBA185A
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 833B5C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670685687;
	bh=bCMpmqSSm2jipn7EF7fsYA8CPoiDELDGjHWEgxU8PsY=;
	h=To:Subject:From:Date:From;
	b=LxcIY4a/rfCoHg00mX4Uqty0Q/l/0fkPPS0tM4tu2veUnX28YtL4WiVKj+ocb5ocH
	 KV7ZOBK3Bj+CN/+n6bRDNaUZCoWpLeeo1qkK9yQNy2kG0XECHF0JJJJ/4CP2kcFgwi
	 FGYEKS4+z/YeYkuJwbSacnnXrXNg9plZMaxmtjtqpRxmMklbf5zf7bchSBBpOCzxu/
	 OxqK968EEcKEe08ilWVCji5pHlA9nYksJWZi5jyfjbVvva6KPXfZUmOPRwwwdzQCkv
	 MVMDAhtcfm9x0xnk/xmNpBzRsQT2QEKEoVqK22dI4z+vi/CMIRbp5PpMgxDmD0weHH
	 ihxsUDL0KpGJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67ED4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068568741.11232.2156063665853840910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c970c91ccb971f28cea5491d10c3dd1f9ff0f00f503627ef6338938457f25c6
Date: Sat, 10 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670685687
