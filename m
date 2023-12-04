Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41403A5E
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drlekR4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B205C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701654496;
	bh=K5A7Wvy18TVOqwCkYcYwuIgghPzOo1e8jcbo8J4ESFc=;
	h=To:Subject:From:Date:From;
	b=drlekR4OkZLwMDd1TD3kTHSo/1WymDeC0BmlKDvxBagVl5Y0bzeYW20NYkcnHJRjW
	 uH53dqdJ4pJEJYkw+7xmOIR4965GIeY7ml/IrGDYksCYS7mnwjYl0k9n8Hku71YI6Q
	 23favrXFPQ4DdgsTsdCy+dZH6JwlWFrgbsnUV0F5OQ7cyzsEYZn78AN5u0F4Orysk1
	 2Iy1RC2jAui5jf3MFzwiASa9EI4+3NaqGaThPJLgtT37fisVKkntIKdmQTLJftyy0h
	 AA/H7QvBFDfa/UykVuFUCMJ2DihiJR034nW9JUQfvyDSaw+bRMqvpYgqnLBL5aBceh
	 2+T8UDazTyesw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3C3C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170165449636.21358.18337812187541038744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8a16ba0a73bf2e06a735f4680edc4bcecef71381295e9a61f2d4da2da55350
Date: Mon, 04 Dec 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701654496
