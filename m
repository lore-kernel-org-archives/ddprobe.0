Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD3F23A2
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 09:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8F2C433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 09:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691227388;
	bh=rDws38sy06Ybyhmd9K2CcvcbFfz39k+1aZxv8SV/vR4=;
	h=To:Subject:From:Date:From;
	b=W2Pm0DSuFyvGmhHW6haJ1SvEGJcYyEC17UcWDG66Mk4YNvWy2plqN95X0AHbo+o9c
	 OyoYADETgNIuVhfzspsBnhJwtG1CHWX4Nx61BrBLE/NhjXqizmwyhiSmxrb+QuLqMI
	 1venwnUO4tgnFwCqd20726XZloX3qfenFgZwm0upWfrhrDTnwcTHuWrPmxpFOt/lJC
	 n2+p0W/v/bvG004RqkzdWiPOYBbd8d5ua/0cT7SL/6WxcvG+kLxlwWdvhckFVbEZOc
	 /4EqwphcKukCeF8wKtPkM7lkD0ZQxUViriTA9dc04RCH32FC9qaQTTmruEnqe2uiaZ
	 vZSTeipYYR0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51F4EB64DD
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 09:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169122738871.24065.12279265282521759469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56cccaf8279163a25611b39d0dbea85da6ac4dbae9963e18bf21c8468be6757
Date: Sat, 05 Aug 2023 09:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691227388
