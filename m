Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BD02107
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88BB0C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670431854;
	bh=H4cBGJfT/p9M/v58wn+c6upeNc1EhdMFs+gKaWswvEg=;
	h=To:Subject:From:Date:From;
	b=notC1co8eCxQ/QtLbLg6y54obk/yOI9OKQ4mRubNTjpLjKV3kwJMxEVNgOp7+UBXq
	 H6Gil6cnFc/J9Gn7KKapsrBy/MIFnEiqBBj85nwTEWADCrtWUAk9zU82aO0s718jid
	 z++GTDRhVC+KjCwzMwXL4tUNW2Nb+Oj6nk4YqPLEqTWxe0BHTXzE7jmNyfIZk9RuIV
	 CD6SzT7BGmau0YJ/seGxe2Dp+D1AI+F0HnJT9LSwvWMyxGu2H2Z/JBxPZLgka3QVk/
	 24RSVeZ5RN9qHpuJ9fyI/ZvXIaQEKsyBWfIlKirbErBbh/Y2CnYoFTstFhHW/r8fav
	 MlQjZs41WsIGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B8CC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167043185441.18171.3285718510017432730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ab916cd648fc77eb51319c3adcf941a0dd30cda3fa3652cd7eeaf21bc74d24
Date: Wed, 07 Dec 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670431854
