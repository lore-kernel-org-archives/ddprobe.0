Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0166110E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C2BDC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673773287;
	bh=l44MpnYHiCGc7+0CrBRz+c/Kof/fPzffXg6NPFG84ec=;
	h=To:Subject:From:Date:From;
	b=r1JZebDaSw4W4NdhA91X5JL0qxCeaHpCHlx7Ppc7NWVWdzn0BiT+bIeEAtQkMwcx3
	 nQCban85MRg5hQScc4pjkgYN3mDkwzLRT9TB9PGCwIcW9MOVsejRmVSJelfhnuzIc4
	 r84G1TjjaU1YwMkp5RdJBFJAdYiCCZH03wPJjdA0IgZrEa5vQKmOQ7uc3o1OA2lY03
	 DXjAE16jmWLrHizcitQbhYr299eGepPJRmoCyv9D24GTGZfFQmnpl6Wzf5RQLDtLRc
	 rJeKQ3ZEcrnIlXB0i5aPesWgs3IfBe7SN/149Uz/x9HlIARd1ubxa3YpCZGifm9AQe
	 ZHxEftlHxbomA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B359C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377328741.3294.17666850956932861918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c10a97cf4425619da099871ec88542b3d02bce13579a8340447490488df90a7
Date: Sun, 15 Jan 2023 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673773287
