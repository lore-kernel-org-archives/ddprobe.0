Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3942317C4
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 02:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C105BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 02:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692065588;
	bh=QsvoqSbIYymsa67LP3Zu3K5oVpRbdOVHLM1pszFmdJ0=;
	h=To:Subject:From:Date:From;
	b=ocSibBstJsHdY6QxVUUVaL3qSM8gfnzdTnQgK17JAPW0+3apvp3HkiY5FG3vBf24r
	 4mBGLFp+ys1qkdcXjtPgL+Nc0dgrI5aaYSG7F3KjvsX5QO8E7nd41PE9FWe/Aqwd0F
	 Iail/kH0J/vq6/laqDBiLGniii/TZD+L+Tg9H/t1qlMautv709N/8F2RxPfHoSYUI/
	 mmSFnk+PCeJ34GwHosR4Cf5IiED1Pl2xm2APcrYxChQPbRyo0jN/r4405W05a0uqne
	 gw+Yij/PBJsgxMqrxIu1OE9ufzTun8Dx7zflgMdiIc1NmAtYS/oLtkQDulO+RkZk4G
	 BuNObVrATcx6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA16CC001B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 02:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169206558868.11785.4234437150778444373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fb36b4032cea80b7d05ceed43824ce590653ae2ef452dd4eb19380edc1a385
Date: Tue, 15 Aug 2023 02:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692065588
