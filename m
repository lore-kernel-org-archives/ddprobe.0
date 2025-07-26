Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F80262FED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753535994; cv=none; b=a3XSRGjK2x9w51DE44oldUYb/xeR4isAXFpD/6Ks4k9zxHwsGWQzlbmRUTm8h42+Z0pRZb7dg5XavJJtqgmJOVGuy6lt1KQJaS5KdO6RaUfsmT1V7oAMa7KXLtQ62Q808+LmA5BUcRxlzdzC+6JaEivnCTxA9Jhr9SwMEkJNeO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753535994; c=relaxed/simple;
	bh=9NgpVa5rBWMfzpcTIxFuq0jVIGCQFhwOhT/1oplLjig=;
	h=To:Subject:From:Message-Id:Date; b=VVnf0FS46h5Km/PKZchKFdGcKy/SUSqw1a+jS/HZUCCllj6BBNFkwig5URC7oNIycSKP215J0lhjUe3Uj0NLFy+Uo1/AvJcj/YfmGUmVxIjtIUakGfDafaXlKxorMkxvvlnjsjbKUY5tU3cEu5Dipv/Px/0F83y3E4DCNvGTBk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Am8HAh/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Am8HAh/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D50C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753535993;
	bh=9NgpVa5rBWMfzpcTIxFuq0jVIGCQFhwOhT/1oplLjig=;
	h=To:Subject:From:Date:From;
	b=Am8HAh/tVfY5LMR7qxlsKoxZ9Fit+YPkuSINEtaPCA9JcwhEPe81FCiVBqWq3oaJx
	 Mv97Fa4U69AWrxlFUJHb10vy9fvOp6l9+GiK4tXcCvwuKRGpCeDz9qjtEJKwF5oHDg
	 eWVut8RE6XSB3RtBlK85lUNzhYzWjhoSyh3+wLr9CtbEnjhrJk8+xV15rogw0B4jaa
	 10ZlPW2cA+14CVM9L8q7enrxS6KIlMawt1Q9PvcN1ta+GY7J5gYJF4oIC/uWjsxrBl
	 anq6oajS+NOSee9qY16b/uqJYexcpqBFZtrUArVDPTNnHhudm8UofPZSG8c44P+Rpw
	 jz1CVZARPjqpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9145FC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353599357.16492.7175986795129022821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d712464d523588d062f91aa222177e0a913b8aea97f28bd80416977b35aba0bd
Date: Sat, 26 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753535993
