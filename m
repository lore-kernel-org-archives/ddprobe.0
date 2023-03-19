Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C1F7C
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 21:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF606C433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 21:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679259905;
	bh=LjQigj/UuQrMYqvuqmJjai/ro1cWaHog/V/RrzP4Izw=;
	h=To:Subject:From:Date:From;
	b=eUsfPB4fumwmPeuaNVsVOt4WuQhv5X8v3eBsMj1FRm+3Jnkii5pMT18BTsLff6Sn6
	 /BNipXGRFK/UB96mgsqKl0b+xYPLedj4uL+3w7fX/LEDRm4J9DKrK1ApGn4ON5p0pQ
	 MqwCVBG+qv7swxD76ou1Bj39OT3JVB73mVEVihsbfiyjTIEIw8ho98OrT4HmwIkhcM
	 JEZaqXmxvKl0VqRrBH425MWeW8m7AOaRnP7au1OmfJ1h1KPy9iykBWcYcw7ZnlcI/j
	 YHvmtAjkBXnvZYxrQJwHcb/D4Yul/ZATk4z2aRTLo6St/fIlb8OFwCHm+D0mXUqt/b
	 m/We7KiGQsE3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CECC7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 21:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167925990579.12890.17165136420232924654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983df050be7e6721758c6d319de2bc07276e791ff39a0dfddb0b4778f4eaa99b
Date: Sun, 19 Mar 2023 21:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679259905
