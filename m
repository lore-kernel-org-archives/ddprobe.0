Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1A93D8B
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B20C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688898428;
	bh=9m3/eNKYtkjjV4Kl5OqbbCustG3/s85D/PmpkNcFUVg=;
	h=To:Subject:From:Date:From;
	b=DnOY9/JuUeUhIKdiB1ZrQxtmo0pVhLRusMKLXmRlB9Usdqd0w0OMBvijbHsLn8HZV
	 ZjP2rvayAEmytOH7d+YFDrSk4YElB56sZUBGKTCmFRV7QhLmeA4JOxTVQDaD6INWhp
	 y7BFhzIDQoqCNeRcmMX+pW+dtn9NKmSb+Umt2cgbL+HeJU9zJ3VHrejaQ3gL7JcDZp
	 xVL9zBZp/ZfyglZtHxS+KXQ8RZ6+s258N5AA0WZosiFFdmcjjeBk0S6chqSugQO2qz
	 HjFkMGLrG0KrqZm9gU2gQtG5Ta2lt4XojZbY7BijwFIIWEgYw+TuWfLraiQQ6gJGzC
	 ODZ3gSohfRMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE40EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168889842868.21913.17403018861382540200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064a45cd0392524df6083839dc72e3dc7440134e18db7fc2432b3863c5f38a9c
Date: Sun, 09 Jul 2023 10:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688898428
