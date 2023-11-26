Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31261657
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSzfkiof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A94C433C8
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701009496;
	bh=O9+gIcdA2aKSwSAZP4kF2RaoW0KiEu5ZLdyKoNrdyMk=;
	h=To:Subject:From:Date:From;
	b=mSzfkiof7hCjEp+f+zGiaeNsXf49ayEhfbxiGlDXH/OdesQMdo/G03UuJi5BOPRNi
	 8mYLJ1L5St6XZnvZVtlQ1Ej5cFJBzllPt3HFvIkr1Uen+Ldua+8sEKYLBl3V/aAb29
	 DfWrNx9HM2/w90AofqXumkSTlZ6WlD47sMKhFF9JJUHwFmGOw8t55m2sZ6r5vVD7ra
	 UTNRwdnM4IgaTUKZonXbdyqALLjyukKoGZk/QelOZraHS05sImVJoJ8CuxMiLPwWtC
	 TcSz8JYw0fdIP2XDQyPYm+nW68JCdeNHgn4/WLt1a0zFfNZKqPrcMBpn7p2WiHh9TH
	 r/Hv7Ce6GqOmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6880BC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170100949640.32448.4696280620398256355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14497b6107231a672ec07e7753165b3d12e868e4aea9084a9fec77ff2e8162eb
Date: Sun, 26 Nov 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701009496
