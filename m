Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DCCA47
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742236794; cv=none; b=dGlcGcDorisTCPkeObwLxRnatib2UE2lNlNzPEWm6aY/hLoPWLkE7Z/An7FKibuzFe4XQJwEQNdaBTVXRe8GxaYOr/i3M0QXYWmamKTfAgLpq8nTJmrebelXDtbY8N06uq0UUGdKp1CrJfckmtnxEASy/N43bLhJ1KJI25taJdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742236794; c=relaxed/simple;
	bh=YXxSSLwAx4eaecxgGTFR4NGp18T3644J3d1nylmC2mU=;
	h=To:Subject:From:Message-Id:Date; b=O7FnZNv/RqHyMgj+S9UZksxZClJd1+lQNkxoKjxyS5pi5yEGrDs6I6F81sxSRCyPD9SrfunUKgYzn8tZ1Up3eOqEkpJv+TTPcMMGIXZxnUK6e94/iNsGuJ/fzJAXNCi/Z0QN0bFziGDgcJhb1+S6moliWnKlAF0NiZP4c1XT3Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksHMmJzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksHMmJzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF053C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742236793;
	bh=YXxSSLwAx4eaecxgGTFR4NGp18T3644J3d1nylmC2mU=;
	h=To:Subject:From:Date:From;
	b=ksHMmJzH7zIDijh1/1VrDrSKXJN8wqMJ6mAyT8OQcogFaSBFjeb0Ofx0T84y/ScaE
	 qTQ+XHI2DKcvuC4fwUY2sbGE2PBlUlB6ybL216N4OAaApSFxirtHoWKljZbg0H8Abw
	 Jh/LechaQSKkDiWUzG+GmkzEB9yGM0ARp/NHpTNdwU6i2J1oqwYz0VmYKyodsUWFit
	 ACkyPKmsKg7d9EgB3NHTzLKivL9xCJbJ2Ey6JQKPEbkXBYzkTq0xxcHmxO8cmp1lmQ
	 fdwHmg99xX5zhc9LwLurPC+I52QGLA0U+/brkTK2UYGh7PH32UWb3VZFYDCAmF56X3
	 suy3Zz9Cp9BgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A78C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174223679360.24418.11657945066680737677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aae34aea3c9a88277de605ede293d8c0f1ea4f361f4a0eeb6c95a3456e06b88
Date: Mon, 17 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742236793
