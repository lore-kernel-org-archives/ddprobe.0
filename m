Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1F41118B
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 10:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF148C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 10:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690538528;
	bh=85f7GYNQkMaZd/iXIQKnWxPKU8K9dw0V8XhXEAT9Ekc=;
	h=To:Subject:From:Date:From;
	b=lHoE76rcK2p3ZcdP/aNfBZ9hdbcalmEHU6pd21UCZWBlowQ2USdkNa0by5qwodFGe
	 B25UI/lNX98oz/f+0qgXaKaA4Eki1wxT9afy4kn2Dy40aonF3YiGwdn3UqcxAvv8vv
	 dHb8tMeHnbAZDtTIM9yjqrxdNvb062LVkZskA7R9i5UM2EVJXVSVp7APoyzif/sFi0
	 JAy0Uo3nuoSOnNPvJEUfBSbSL7Y12IFYO8KKhUAnTggkpc9/S1+Q5rpVKQS24m92Nw
	 09YSfGJsKsfWVpVG0IZbDWx7nS8yGqTJMygXVkZa+nSP5dUWV2R8SU2fwuZMArDNUJ
	 2lHEUqKwNZdlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7C5C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 10:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169053852876.9443.3477803979770172547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91bf15f373a93e2dcbc87b56f2e3527bc46d40d2d827db65c055c32d49fbb7d
Date: Fri, 28 Jul 2023 10:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690538528
