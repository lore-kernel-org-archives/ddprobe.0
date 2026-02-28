Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDDEB44B66D
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772290493; cv=none; b=Qv8EI7Gpt5TQ1U+/Xln1FUa1rYLDAaq+QeCAkWfUVUUiZUn4lIRofN4ocGdiF9ygeC92TJlfFKZSS6LNfc7UdsTCW4nGJ92u7a41vVvkIxwrXtcYpT4vIcXVSBnCs2cvWufacpWkRCw5tTHpwmiFrWreni8IxjYm/gRc5WKobrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772290493; c=relaxed/simple;
	bh=QH/a4xt0VIr9DCU8npl9LigUXm6jvtilb7ixcrq+KGE=;
	h=To:Subject:From:Message-Id:Date; b=cPGqCx1uukmJ7/VrR/ltr4gjjoKo0Yklr/afe5qzcmZxpvtA5zBHuZtBF76+fM0oTJOkThZf7AhO7YxzVOH5+I/SZJ+5xJuDF3QcEoVt2NkT+1JFAbOTcpunVvuCrXy51AFsQrqQUQN3w00rUCOrJwWQiGlP65L1vh/xZcbTOWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jf/3N0ct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jf/3N0ct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CBFC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772290493;
	bh=QH/a4xt0VIr9DCU8npl9LigUXm6jvtilb7ixcrq+KGE=;
	h=To:Subject:From:Date:From;
	b=jf/3N0ctHmPqgCXHvYvqE3OcMWFl91rWNNPQTNPrzuNTjmfC3/DymKYrpfbrGC+rX
	 2bHbeklRQ1yusDEP00dxkxY+SU7/i4iWfDTpRQGeIx1Eeht1UloW4IJ81lARCiPma6
	 h/aSEizl6DNqWpIQjLnoKAXw6iMrIVYdU0Cbygs+39p8vVH4C0Cj+sfBOvMhI4xQHl
	 tsD7hat+MrOLE/reDyeHJn05hQcBVMxeMAdBlHqXjm9i3WMnQ7uIYv+dkK2mzOXxr+
	 E37KFamwuX1BQQsQXTuQ2iVwxfoRaCRuHhQi/7jnGplmtsYK7D9deTKkIgpqysziJm
	 2Xby8r0rRB7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9551EFEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229049358.4787.18352567115540262054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38dddd18bea1af58a44e66b25230814522d657c6ba7a042608c47346ddb4719
Date: Sat, 28 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772290493
