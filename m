Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53544657C6
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713868823; cv=none; b=TGOo+MykdXaYIguJ+XGXObFQr0i59yxMWRjDzvi20zNq79fDdA6I/wjlc11ioHt5LS1NXu7OkU+uyRKm5mA/4914pP40dQwr5xVjAAyCyr5FhfdOnOR/2sDimthW7kMqEjr18K+Isscjw/FvFULO7+oLXJ3yJU54kX9JOIF7ctM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713868823; c=relaxed/simple;
	bh=5TLzXZVyYIIven9Ja0CZ551TWVTW4LMmKbFkzx1QETM=;
	h=To:Subject:From:Message-Id:Date; b=UB30Rl0s9LG+7Irc9f02wlGNdPCO3oRjsjHa9pbMUfK1w/LPfbJ7y9ksZL7pbTORAgyR26S+XzgVy1UxR7RKdYqZIG+xs+w1IVE6CFvVLxcAa6zqyF07ekl/TEiEOzfjMc3McRv16KnNqsKaQn5kcPusRjWraP6D3xN+Z+BO6no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmv//Pzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmv//Pzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC82DC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713868823;
	bh=5TLzXZVyYIIven9Ja0CZ551TWVTW4LMmKbFkzx1QETM=;
	h=To:Subject:From:Date:From;
	b=bmv//PzsAWpIZBMPz75199IrOShqIjZNytq+dn8emhSnsi/Dyk72vicD0P3SqJp6G
	 TWeV3WWG6xtxQaCZzOVPvF3OzjIggWfsC2XcbonIYl0d9Q6lJB0o3op4m+ubMUwELq
	 vad5gkAx+QuQ6LXSXR6MsS2UV0WWOBaa8aXxqTP1Hvr3aScx99dnjbg9uetOEMAmiH
	 m+uq2vNKJhXWm1cmzQn9vCDITGZzms0kP42hDbn2kpzq0bc30sCM6MmoKI1aIUgzD/
	 bWJkbArC8/BnghOjg9fg2u9fNTsaaElmn/TKGsByibrDKzuwxhF+Eb8ua1sHvAuwnJ
	 3BJBQPX5mw+pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD8A5C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171386882282.13900.12788887739734554598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b425720a69c0e7436b1226e5b8f1ab47ffcbda7878564b79361f6d43c7f708
Date: Tue, 23 Apr 2024 10:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713868822
