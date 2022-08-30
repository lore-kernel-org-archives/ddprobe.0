Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C045D610B
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77627C433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661896253;
	bh=iXieF9cybGRIATSmkBSwPyF8gU0v5m5eDhx9AduDaAk=;
	h=To:Subject:From:Date:From;
	b=Do0bEzkISMMzkbeJ07mEWgJ1lqeeLuoMbmOMTfO5Klj33plYuiLBtDBE46P1EoQ80
	 n/mynUyGFqN90H8avLDPThnKaAvcfFTgMC1p5cY+l2uVo9yaN3zF3y6lyMP9eJ+v2S
	 vEQQ0mEkhyF58oxH/5qu6vprMoV9v3rfj2frvs6gGwCmJPFQhAbPGCdRSbxWTMCI49
	 IadvKwxj6IhDekObqdHByIgPGJW5amrER2fhP1V5OCrs9tDkz9rVqhldmdxcwZhXyc
	 1tWOyHJqh7uNqBsSm9RfpZCqNA5KlQRopZ0eS78Uuci1jHPSeokdQ6Q/670SVLNwRC
	 Zl4lKEfmjOHCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F834ECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166189625336.15896.489614812713829786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bfd720517a06f1de528ed0272a1c64dc8765333344d4d8b5a13e33a491fff87
Date: Tue, 30 Aug 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661896253
