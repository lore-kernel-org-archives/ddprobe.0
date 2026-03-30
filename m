Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019C83939D3
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774896894; cv=none; b=MclrN/UBX3wwuc6UeG+l1k5gDUcj1hVYHv/iz2RIIl/Im8xU9IMnwQXGvaCOGDgWaDBI/Dpep+c9c1qXHXphJ9AW045nRJZyoCUaaznW6I1Ur6hFuthqPfINu7i+3nc8Ln5n6lnD7AIz9xUp1dPgY8/zlZzD8KMY+FO3ti+LoHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774896894; c=relaxed/simple;
	bh=svLl+M5t3VqOd9HDvYzH7pM0KfNwUm1Fdo6Y6jR0SEA=;
	h=To:Subject:From:Message-Id:Date; b=oLl+luwm8kWJvjx6kE1p/XsJOHwJTiSyyL9uzNpBlFZY2sxM/p4H5nLGVid//2m0TIEhFAPEqGMPnyoiwL/n5H5v12kdi6aX4c1v3bcuCYnc0t5lQiLsxEB7XVGNrE9Np8qRzSscDEbzHAf71lDKFgI4C5go7TIPJJlMXCWMJy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4VgYJ/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4VgYJ/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F8AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774896893;
	bh=svLl+M5t3VqOd9HDvYzH7pM0KfNwUm1Fdo6Y6jR0SEA=;
	h=To:Subject:From:Date:From;
	b=H4VgYJ/YZaes2+RhiNccEHf4Dvh3TGS9XPcWZvoaM5IbJmtrfvhfE7Acs0ZMrd+mM
	 D95VcZ3e9WAOsce+CqmGAssp2KZg1lnZkx/ANs7CUi8hyFoorQJ9Pg79NXkwGN3k/C
	 PFeofE0P6v7BVFiZNufnwrZUqKdYl30DjdFUI622JTR561mexFYGN3JDva9rbclTLk
	 ZW1AIbCDYk7YRrAzBosZzthVjBjN9+yIvXBu3PXJb3kHInFjA6xYN7x0K184COqJVS
	 CHjvQtPUWv8hvHGS+5tg0g7aEvk90GQQ3ZJIv1XkrnpP8jNB2eN11L55pE6cdWYCQk
	 C5yT4ML79JwpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914AD1061B1A
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489689358.23506.16056347184988929267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f21a97e3b3180e00d97f8251811a753e881935d25d41c955cbc23896ba82c8
Date: Mon, 30 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774896893
