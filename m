Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEB81CA92
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720352183; cv=none; b=dhnJBxsXfP+zB2QWqPWXjFrqKucrEenIRfLF/jLUQ/9ZFmyrm3CwE5h7ngPsY856imvAyg7Jg3DKj553zz/5ApxboS7VlgJ8IBXbmT8nKujoKgaOk0YPk4PCILmBoSv0F0r1/myG6rE89iH4M8o5oy26MdDbaJofF7owJVfwJwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720352183; c=relaxed/simple;
	bh=WAGCbJqeTDNBkD8HMwu0zVlfJfyAVX+32Um+33LaZHg=;
	h=To:Subject:From:Message-Id:Date; b=mxzrol+oRsAp6pDnov7cidkHqcvKvPNsmwgMgf+HnhY0GE3rZbF7Tv95KczBuDBjDzgVpjjnOrAT/x6rYkx878Akj6jArtQ60dWqkGg29Vs7YiOY8c2HBwF+MYGxqLyknLHCuU8I0310OOW4jxxdTxptxjC+UCRutsRp4zVu2J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+1HEJCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+1HEJCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4592C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720352182;
	bh=WAGCbJqeTDNBkD8HMwu0zVlfJfyAVX+32Um+33LaZHg=;
	h=To:Subject:From:Date:From;
	b=X+1HEJCGyzrCL4FW6bfLVvY3nbQgdf41/gOWLtzYTdqjI50GtMEEMPHPxTLqE6rqt
	 82ElsK3GXECtVBpolEhNU68tTZ4DVT9JUlW8GWwvjAB7AdrCXZCrRkKZ2SZ/uqZmmK
	 EZyeFLETJ0pKMQQrx+t5s1zXmW8gnaKt/l8IKa1fqPTaDv2QJ6lAraVHXe6ypHvQJ1
	 5iWgMtq24okUqNZlc1NrC5OlO9+B4cOLdO/cJeEYK4yjXevzJVDWdpkdc4TTlJgc95
	 kS7F1leTOo7T+4kRulcQhAxn0oeScltYbqJBSRHwNPU4T1WNI2vdp2u2U3lesKa3OT
	 splM2U8mZXoNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA1BC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035218276.14384.4107884508749239277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14bbe47053296514b17024647d8f9017883e7a3eaf328b0945c781ab3981659
Date: Sun, 07 Jul 2024 11:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720352182
