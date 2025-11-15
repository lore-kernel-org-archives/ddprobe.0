Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C0C2CCC0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763198394; cv=none; b=s8FT5QBg/csrjcTT/ogXf5dbZnLmXBg4nJW+rgISLjdHyam1aZaUl1zuwP5pXoxm14UctsJBvgwfLjAmw9sblOEGlBBB0MX0Xs0l61l0hbWu5LcKGmFOCv0ZYbpZ8znD/Wz2JuCMnq1r3f3mXwOzD2H+eMPn1txRrfg/jsf7I90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763198394; c=relaxed/simple;
	bh=Dc9v9mCLz8swAi09OA+qF8TcgNCnTtldEnPNQJoGNe8=;
	h=To:Subject:From:Message-Id:Date; b=d6f8llJ3/nEAJ09tJK/vckEHzMHjzx2UblYhtRCG0n5fUKnDRHIrktNs4BYAK5t5W4049Xn/ENSL3wXGDszl+20IUj4JwnLKJkOHv8FBezH0eXNw47G/Ayzf/ch6J+Fq2iOsYxfm0Mk5vl6/nIg7kBUeitULwqW81fro/s2fxxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjVXI/t9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjVXI/t9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6BCC116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763198393;
	bh=Dc9v9mCLz8swAi09OA+qF8TcgNCnTtldEnPNQJoGNe8=;
	h=To:Subject:From:Date:From;
	b=IjVXI/t9wUZT5cYQK0Hi6mVWELZBnUA88JXzTD0funZ//yaNQjwzo15Fev9PwHVNB
	 ACOeIUrns+bkJlxPFAt6DA+9XD0ObrEGlVh1VrBFby2a+/300Wv85qDV+Mo4Sz0/Lz
	 PCb66NcbnvgFa6H6mH7MyOU+SwRUHOHztS3pMu3gn2YEXxICqRaLUSW7yqG3UYRJ2d
	 JAcH50vO0Nq6R39vhhrCIVHiqObrOrllYXIyjFjUgxAurVt8MsW61PHbDkBdHk5WQc
	 oZiKvHVh8h3IKPZHHV1mz/xhZ9G5w3dD8EC2ja1NtFeKkXAWCwMyZhjkusQZAOfw5Z
	 JS6vXDq2/IzpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0311CEB2C9
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319839362.17060.7484455925640323569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9328b6939e40c86afcb3c287c74dcf2ad7a8b824087dddc8696490314263c9
Date: Sat, 15 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763198393
