Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D603A1360
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 850F8C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671590487;
	bh=U9GfIouUPbMJ82v/ynxrcdF0f8ChoVPlPpluharZ10o=;
	h=To:Subject:From:Date:From;
	b=AzGYxigXaDRL5VuBFf+484AxQ4x0wvoxkJyWbB0a1BLMKyJVXVSVFQnfWSrpXifbp
	 ZfZtXM6W637DkafwZYBrUHViK6Eax7BFjOtReMomCi0iBPg+vlVLdAPI5UZxiwOLmY
	 ElP8gIvD9UK/dbdIMGQT/MFn4o/E1wASsxYkLC8AaBO+qG8vpjs3E4E3cgKomi+pgs
	 bXz9AGQarUzp/QOVj6goABtk5rwTHNS6BBgXRV9cD4/3us/puRPU0/kguBgWkGxiUN
	 G9wX70MXWwfDz+eQgrI4c30z9rC5l2nq7s1JVff72G0aQi0qzkIDMjyq+mreUmBYil
	 dbxFnCQVY6/NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B1D2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167159048741.29320.4254340439172220653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bdd4adc145ebef3d3e6c3723350d3f29497698f90130bc96e0293bf0c90857d
Date: Wed, 21 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671590487
