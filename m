Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABED369239
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768377234; cv=none; b=VF2rmR7fDptLyD3CiYCYLqD+Kdsu3x3qnn4ebAhDEz6ISWuZRzI+8NQEIiunV5tCUNqFh4cb+YsD8JtNAFFw8KVRi6QdraPZ5Bj7Q1IVeAk9ZUqPv26Rclddibk+3Re1iPWk4U8LREhDvQfH+fo0+ZuxJo59qBhB8ZEk7iZlwqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768377234; c=relaxed/simple;
	bh=+0CBZdzOmoH1Gf5FzDn2U9dErvTxaKOIWUy0CYEhzFo=;
	h=To:Subject:From:Message-Id:Date; b=IAQrn+Vp4TgvoqnTrI3uASeoTHoD2DtsJaw03sXreALEb9sEp2kBTdYPpvm/ePeaCgoMfoZlpHRoJ170UEl/GOaroPW5skWxq+/DuSFR3v4HfkyNxtkv1FZucux2Zs1Ox48xakxoWHQYCPJc5sxu6Fp5VBBRfLOiJ1JBX++gLfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nULazoM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nULazoM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C6DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768377233;
	bh=+0CBZdzOmoH1Gf5FzDn2U9dErvTxaKOIWUy0CYEhzFo=;
	h=To:Subject:From:Date:From;
	b=nULazoM8DrzitSfmLJmSwJCr+zrdJwuChjrKwL5sgoIGkBj7TFAkdjy6aXWiTBkRe
	 SC/p1VrVXMYf+buCyAbmPqXgyHwMP47duqRs6HsKTDhagfsPE2PFQPvLB7lDZxd3aE
	 fLutE+nZKsAZlYw7hO0yaAWUpW+UIHJGNjmvNLRUxcZOESF7pstmWKjHqvRsY0sku4
	 04ox/CEDWDwe3WeN58RriTyVGowhg0Zg8WDoGWTvsB0pSzgPNwHoYV54BRWzQic2oB
	 kZUiM8PuMw6hhsA5EcmwHXB0E9d9OU8chJ/bK4dgfdvazPtJoM2chi3tBdoiNZ+Bsa
	 4hYTNBlycoONw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB25D31A23
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837723357.20934.7929847200688316236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff67add45d76cb355ec9def37803906ba18d26d44c91b7ae8cddf7fe95d278ec
Date: Wed, 14 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768377233
