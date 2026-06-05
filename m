Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C1AF175A9F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780631674; cv=none; b=giHputG52qfdDIXdwJ5UeS2nW9PoC9Y7S+3f0cWnL0lxSfdSWNTo8ecocep5Rf9KZK/6C8NapVyM6GaJAkJ8OFdqd1e6nFyxs0XddwuUrIOQ8/Dbq1c4Letvfxq7/ijoj5MDdGTiL+zfIcAtRnO3hQKaPQvzuj/e6RLlws3U5as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780631674; c=relaxed/simple;
	bh=tLsW0etigW6HuukVbcuLpmxv+Gb2m+t/i97XpyIlWkw=;
	h=To:Subject:From:Message-Id:Date; b=RWGqHOHjcKw1Q1Slp3uCf2vPm27TasqfSoT3jpteMUyFom/wF0N50bp7WY97m++9GAngf0JAocwgjGNwpzY1yd3r4ykgFEU7yE3YS1MReKZxMNA6sX0V0TSK/PJ2D1dxTssjAwmAlhMJoBQ/WxtFlYzDKOMpGd72lJhuSpoUFBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPGXbKCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPGXbKCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1ADE2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780631674;
	bh=tLsW0etigW6HuukVbcuLpmxv+Gb2m+t/i97XpyIlWkw=;
	h=To:Subject:From:Date:From;
	b=tPGXbKCBK5qslhFBHCyKHPENCgWMPl6F8lQVD384u27AVJ/2hb2E9guPPR/2srVps
	 byy9vV29opGDWn+jsgEpC9/G/MLU0v08ml//FcDa7PO8MN8BF8KZdecZPZvH20FshL
	 33hTyPWwL6K/B+hyYBFbCVjDJfkpqzR8NH6f5Nhl28c4VdnJa6AXPx0ReyEzCi5kNz
	 NzW5YAN4jeY3n3fYPX/69I75ot7O9Z33rcbRTmT0FBffAOcjd1Bej1+3ENoMVARoT/
	 y6hVba0c/aAlGD7UZhT6mwQgEC0EYycbwEGWbkqYJdffsIHhD+xbIJrDwDzX0PO+Yd
	 vYcUnpXzlVpPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4936CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063167386.24757.6104148512061993780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b331549a38253f7843a0b06337fc6c77f326abe98db3d439fc1114d9e8933694
Date: Fri, 05 Jun 2026 03:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780631673
