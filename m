Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFEB3F5BC3
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785970834; cv=none; b=ptaRVr/3NwP2mvYwHXIe40Z+4CJSy0k07j5OOyQ1N4uGsWpluNoUGXUbdUhjRHdrxOXXmBzMYwoVq0cFVcjdlRfFcUe6t9wGfrD8TmTy3RarZDjHhMCaDSf3d/QjwXXTSX+HETCus+kqZycUBTwrAK9EbBsGC6RE5YbIEcgZvO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785970834; c=relaxed/simple;
	bh=9DqmIFAjIqOoYBnMAI8tPx96oP/NnBCMibomhuODgJk=;
	h=To:Subject:From:Message-Id:Date; b=q9rN+7RD/DFmL4iH3SBsuDnB7+r9QroxyOkkImmgsinhx2ciCV9+Ciw7JEx/qfoZHcQxXwFXKvxy6/LJ3J3ZBBkCO4evJSsoltboyD4OZSgakFz5fEmKn+J709w8FVoYWDUXVceyS6grSoH0qvwPpX0QGmJ/EFH0vDwbYjjd2rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPZZ4K46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPZZ4K46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42F3C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785970833;
	bh=9DqmIFAjIqOoYBnMAI8tPx96oP/NnBCMibomhuODgJk=;
	h=To:Subject:From:Date:From;
	b=dPZZ4K46kS0gsNi/CEBX4WcGEh3hnntPlyweUP5htClANmaaJjSgy2mH2yM7q4jYM
	 iU4+JCPkXBg6kRQTxH4cLrcVIxqBduTJYkNrviHTaPXIyK0YX6SYGYgdRvwIpVOoO5
	 4E1dZ7Nyg30OW2u7E0v8qFk6i8BgLvi2Zoe/VBFo9SI0WahKu01Vl2jKlokUAd5Kly
	 xsH8jFQXQ8REyMGK1rNctieHmIPKCTsKr6k1jnQNyiUTTPBMTjPJey7rEWZGOKpUAZ
	 DqSrGOFOOEzJwgbetpeaXOSoBW/h9SkjkEzc9kXMcSxePdYKxuCrHwtqLnOj7Y6Wch
	 B/In6+isPj7Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8038C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597083373.15845.2121617593946238540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf1057fa28876f74ddc67e57a75a34c88a4ee40ad75c821d435700bb517bb03
Date: Wed, 05 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785970833
