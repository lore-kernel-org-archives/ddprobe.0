Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B05D15AB
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 12:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4EF7C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 12:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674391925;
	bh=zYWswbvrSzUKIp0i34aW4DXbifoVj5RJsrVaNcTqZjU=;
	h=To:Subject:From:Date:From;
	b=uxCbD9Jy4i8upVVf/YID3zeuqSx47F0WDC/w8bWJTkgbLTG4uzqEOn2ypkCnjOrcH
	 i5goaJvOrN5X5fOjAWjH2y/kdMmbumX+Ow1XsCbvH2cotNtmONocWoko27KBLXpbu7
	 tYzoeyFPs6f5lhAiAqpGObDMLAfVKt+bbyCgvtVoJyGHsGCzsEbIqFORRJlD/tjUoU
	 Y7PnVAdk8w0C+ZSw3ayZpHQwaumOdmg9gLAPZAiK9eNvG2sAOfABh+vjnLTcneJvhj
	 UwOoWagofsxwuPu1FzpTLfa6OYikBMesCZbT5Dzmc6pINP4mL2Fa/iR7FRD1BGbmfD
	 /PxeU72X+8DjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C821BC25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 12:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167439192578.20396.11251697373481930938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47dd70760c45e9b6cfda7f1d7d530a153f2c9f37d4111193c3b764b112dc5ea
Date: Sun, 22 Jan 2023 12:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674391925
