Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8017A3D
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE87C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668306654;
	bh=hIVAuA9W9s29DpzH0VLJj4ftS8w7IzpAuTa44jKOOJA=;
	h=To:Subject:From:Date:From;
	b=VqHU+XAOqbUA3+jkLHdMMopiUc/KCBv2gQkGQYoChtQewvW6B/lwNe8Pf6Fb0Q9Z9
	 naZVkU1X4IJAxfy+eMk9eVL4kCCmN5NgXMKN3Hmk+5zBAKyLWpZ8uW68nFDxiW0GAj
	 3rbh4EA5qHEBAfm1qmx98s1KnKbVurwR7UVVXitbgjo5CLeRcCxbrD5ljOraOk1DA5
	 d2HDeMt5bKEPnfKtva28mAt8mDK9QzKWsTRyd5OeaMs9bKwzjb8XgtCrhRB6kTaK+S
	 hu/FW0LyCk/VunE84QxUBQxYPlhavXOsn2iHBaY4CDt8FRpOhnHEfI1KFN1lMaf3hK
	 H0AHpbQ08ofeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC49C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166830665434.8543.542539213268944332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a36696053ddc9c1d64506cbf32534ee53642ab57ee5908fea5717c63b7d8ebe
Date: Sun, 13 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668306654
