Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1158D275AF0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761847794; cv=none; b=pW5qXaTMiWnE8WwUQThneC4uyPuSsTKFr+DTw0PG0OmUycL5OW6WCjxQ1Ym7gmLchF0bZgJJe2A5pD3qvj4X8Ka5b/N9IwZjPVgt19JW9rRwgHYT8xDU+Mue8El/t4n0jgvvMkITw6YljNYiENPxZqebpkqqHLwgpNevd3OuX0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761847794; c=relaxed/simple;
	bh=5rlwEARdqwxK3ca8+tqWd6w8csqCIyvgMFjVK88t7zg=;
	h=To:Subject:From:Message-Id:Date; b=ZTxU5+ZpbOzFdpHLOoocII0sk3LCJ2oyaKvnng1T0kWAOS5/plsMguNLoC0ZOJIb73j0y2Fp7wfbG5nXt1LTC2gTZGxcsZNsWJwbZP+/rk84Apl+zlAxGXwMmfWa+HU55/kYGzABhoGkx1dGBDaIr8/IdRFC7g5nu6E8/4cjvJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL9mP978; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL9mP978"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54ECC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761847793;
	bh=5rlwEARdqwxK3ca8+tqWd6w8csqCIyvgMFjVK88t7zg=;
	h=To:Subject:From:Date:From;
	b=hL9mP9786OmDXfmaDgbDoS4mSNe3Xuos/kYZnjbjlYJOLM0O1N1u+VlZqy5BzVP4t
	 iMW/0VVGZOa1wnOWMuqjvLbGIU2pwn6leOaC6so0K+Xnhf6yxz8cmRq6iVp8+d0Tco
	 DvmG4dQFg5+lDHyDL+UXOx6Rb3G8zG5yhbZtUyzGKi6p9fE6T5o7HH06PQKtwhpAG8
	 vukPAREh6ZYULgKhin/3VnomKX9v3NNr+zHqwnNTMW4BLOBLEkIGUmRmAmeY9EwDhv
	 mifd6846bV20+z3jmAEWZOQtZsmgI8iUr9Df7OZ7aLz9DHEW2f4JL/nMzipPUtigPx
	 BRnhwXAp4ekwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94753CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184779359.17571.1237945645228224998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f9cf8e231e08218b03ef8dc5b14294850243302259bafb382519c77a006bbe
Date: Thu, 30 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761847793
