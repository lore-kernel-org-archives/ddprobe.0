Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E2C10E5
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D770C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670719887;
	bh=fecaiL3kAGqs977dTrVQvEF7iDbxGPE4dIpcRYP7R6o=;
	h=To:Subject:From:Date:From;
	b=Xd62Zpnvk4NnApSn3HffT8K5Fvas486dppGph3VTVTdh29U6OdC5lB0DHBVAlzIbs
	 yNAi/jyD0VgA3WyaWd0Q3zwnz4fM9QFaBTDJZ+Q71gSIwOEwBiwtVPuloga+c9hiGy
	 ik0W7DZl1ZAnzOi7swTtXB+B8L1oXCskl3I5B06+SjQPEFlariv4+hpFCBVYAPz96t
	 yxqi9kWgsNAyoGIJh3ETYF497rnbtuJ/487pkiVOqc2vIcr08hqhUZ9cOH07ZGzaH/
	 U51lxH40DA5w6k9DqepvSMEELPxMW7HVqYBCG3XVKdt3h+efifq9aaLEWMRMiWWtVh
	 tb+OZSmn1k0mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7122AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071988741.18404.701321381290143311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2276acbd85ac9582b741e8017eedae32db281eca2823d8a51239aea244c90095
Date: Sun, 11 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670719887
