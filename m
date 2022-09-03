Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D512F35
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B62C433D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662248453;
	bh=06jEwmYZuk/J2Uws0L7+TKhieqbX+hNtc2r6JtYeCIo=;
	h=To:Subject:From:Date:From;
	b=ZIAmRaMNqojcqUG8sBDRCaeuAEv455RbBA/hPrS7cRE91G9lTvEqeiuJchO+7XeqP
	 0mqz2Rv1MA1eb2o3/b7Sym4uW6f3+UtRqyGTGI4o27NW9cNcYVt6AOoDoRt0UDwQZK
	 rLgh49hf0mo+waOJ1s2ZuQQSuqJMuNaUVTnq7Cij7PI6JixHH2T1UkLeiSn3AMiFX1
	 W8DhigtAxhYid6+l5/E+K8agAQKn7BNIObNq98g9Evnc8iGf5O0KiP66MeVbPu7w/R
	 niOSkmIwPfskbIRQII/i7PIke3ADi3yKuLJmsnBUe1+w3jM7LFD6hWEsl31vteeHyT
	 LoxJw9V3o5hmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5685BECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166224845331.14592.17566309231381724491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f432b7d9115ea9ebab29ddf2e611d612751d91fad713219332c8696b2c3097f
Date: Sat, 03 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662248453
