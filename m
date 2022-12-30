Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A6E53A9
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 936D8C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672438887;
	bh=rs/fbO6o0Zh1ulBz6/lBZ9IKlBgSf52Ow0nCYzhwh+k=;
	h=To:Subject:From:Date:From;
	b=YiF6MKPzi+13XQ3lIFn8wU6w049K8kxYukq2qv5EMBe5WYeCrtBFlA7Cv9JNRJWSn
	 MMmg0t9k9oC4wr0B0j5mls2Wgqkd3e9K9tzQBtv4SXPSX2MUxz1k9RSUfuphYwnvcN
	 nr8Cm/drnDwtNqTts2lMpeCKUUObLrg4pTMv4q/d4nufXMpa64QeKgVcgagyLAffbx
	 GxPiSJjjaomUZ2hBodW/gXgdh2DRAi48CELeg7sNmLOWmHz7JWgOXwr3AnojNu5x7/
	 9qgFrdKsdn1hWUayDvKQ+L+V7aRfprqJddiKm9mLldXh4YzWMm2WPSBlgdaK72CZLC
	 QAL+grj84sfuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7038BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167243888743.12601.8113951939434485663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07fcdd61297217ecefb42b4a9232d05ad982e54d82b12d1948bcc6a794215a9
Date: Fri, 30 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672438887
