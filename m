Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D398517D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87EF7C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673421087;
	bh=20l53oCaQILNOg+dnqnBXrWS6cW+HQLmthCirLB5eJc=;
	h=To:Subject:From:Date:From;
	b=sw8/V6FmGUIgwwhL/FeXFRO7vdepukxLfA89jRYbgd7icWcup1S79dplozAt2DG9f
	 auKyjrLmUe6h/GnE33rpy8z0yWF0P3PS4YNwORae159RqKDUkvSIiwIWgJj4f+VlW2
	 yThHLUSzOhADlL44KuBNR554mBI1fgZjj07eU38oTVYHM2Sh5eKoJ4ChwmuErENnFI
	 ndIslWxkzoAvXgYSvwN6+BSZFfXTibv10MxNYL4kgsKgbH23D18nkoBpniZuuyYThz
	 CXeZZmIPMX9S2bUBznl53475e6ENwrUrZTyzTqwwA2uvZQ2d86rs1RiYwhrWAXJRvX
	 6621POv9RrxFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 686B7C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342108741.10959.2015243453638233555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb5e50b572941f87aba25ba6e684551b81ead7b2902351087f0b14373848a2c
Date: Wed, 11 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673421087
