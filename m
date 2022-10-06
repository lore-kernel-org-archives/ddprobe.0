Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8211367
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C690C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665059453;
	bh=zX9gzDAaWVpUYzwXxPkCGWDD6D1L1365GCWOAvfZ3fo=;
	h=To:Subject:From:Date:From;
	b=lO14Ccu+t25axZyOkldLoIGCXsXf00N59b9stDC8GG7OXAuGHocFr3NLbg0WKgMpr
	 JLc/s9iU5TSeOlcJldMxuzN3+uqvifpy5QPmQXAp5bnZ8nfBD3XU0LEgRbqacMRiX7
	 GfwD30AFjqVcb43uqUzRiKzTwOozHEiIHIXq0zhaR3VLiKzD5F0GP4BaRba6SFv7dX
	 orbP5b1KrOsRJU4UED/aTfbQKKSXlYhHpPh6QTi3pllob65fwBvW/rA/bG49qtAxcr
	 pBXnJUF3+eJUCdHBHAlaZUx3Sz25IQSaGayBXR5eploqpag/fXlxlseG7VuqicFg3z
	 WODp24rE+0j1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D4AC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166505945332.1041.8250898087399923619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97da05b08ec8e4bab8a696a90352a51350021adb392d32e6dc37a46d240c323
Date: Thu, 06 Oct 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665059453
