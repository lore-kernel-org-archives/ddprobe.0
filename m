Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C00B65C
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Njl3rAJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73432C433C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700928496;
	bh=Mn+mTtOeOr+9xbLqE1OtZQ/E+TLVa9c54PLQnhdPxZI=;
	h=To:Subject:From:Date:From;
	b=Njl3rAJRFQteqqDp8RBPlTPBNogXR2j7Ancvtm44Rcci7BbVVxG1i/fx0S7vF9zD4
	 Q4S8eTdEpowDeRwIWqEwmECBuQu0MEEtsYWCv8RANnGM5sW6WTajBlVPj1WJs/PKZo
	 a9iuf48JlYllFc341NhAYad40uOXcWw83+vwF8pFyQ75Y9GKzGyrmjZYv0Q7lv/+RR
	 PQr+dA1GfwStGetrE8Im3NAhUh7x8qeUdz401ToZZ5e7G/0XfI6PsJxixAkYDB7qeT
	 GG12jaVkXWaEewTZxx7jZW43/XIF5xNk3c24fzkFPQKVq6lhBQoZpPJgtnVHaGG9vE
	 UXf3ruLhgHopQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB22C4167B
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170092849636.28416.9515457991518505546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48bd91249c4e2e834f4472ee68864f11d0208fbf0c69f3dc3d9cb2a05d1ed90
Date: Sat, 25 Nov 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700928496
