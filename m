Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E3D7E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84553C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672428687;
	bh=ywrIEB+n22CkzQ8ZLIfcuUWhLI+RF0ovRf3kVz/rpDY=;
	h=To:Subject:From:Date:From;
	b=loPNjp+YnL+o9itnZHNW6pJxJnnhpZX81TzzXWTwShEnvBy8WuOH97aDa9yhKjJc4
	 83ren5DmWY3HP3x4ldUdAl/i/XjRZPaHATXb2WDtoGScgoH7So97NMMH+GbRhmrU3v
	 4PsgKVurebN98UaxHrzMiJkK6aD19YHc3mkODTEb9mXa1Hgxz5VcZYych7p2Th1sr1
	 vjf4F1OOEeWVh2aVuykqrFg0M/jCzEx/d7pk1km/DZkGllAUROYzDpjUqLLP3j/XAP
	 VfW0iI1ncprIkL18jW37lVP7G1SA/+xYzZiGADZmiyto0aN1zSCYqep/QUfYcuKnFt
	 Um2qT5SymBOlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A5EC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242868741.18115.21286821307818041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: addf0fe88c628ffdace2d49b9cd8de3644fbd48912d41e645168b50a7a72720f
Date: Fri, 30 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672428687
