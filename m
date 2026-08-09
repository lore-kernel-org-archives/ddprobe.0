Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E183361DD5
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786296034; cv=none; b=TC06K7QTEIlUnUz8ngMzFctwGlYedtXAW5Ih2hDuPuDCd2Orsjf6Tlw3GtH5h84waSkChqUmI9N/acGJOJCW3dUvOv+EvEDqzD3Pg9eOwR1Jc4ioef2SYpNr51QZzajE8TCHGPpSAbqmtPJeytqao7U9mX3nNe7C+jhN3JFZFFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786296034; c=relaxed/simple;
	bh=+sN7hR9QYQ23GLpxFb0WwTisJmHvzyVv6rnjwPeTnYg=;
	h=To:Subject:From:Message-Id:Date; b=eBwll87hLXtAyew/WvnU6oLll1Qb7BTxu8UrRj8BFN4y72VHM2gt5y5WPK9/XMSzHNpTaMfPadIRDZR0qkZynHvdkGvg6wVRdEJ9/BmktV0LAgcXzAYv4/ijGtboQOyAKpdFQCJcm4Tc8O5iR5VQrAuIqwnxzxCNTzTP+l6bkKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gyutj4uG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gyutj4uG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E84C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786296033;
	bh=+sN7hR9QYQ23GLpxFb0WwTisJmHvzyVv6rnjwPeTnYg=;
	h=To:Subject:From:Date:From;
	b=Gyutj4uGALT+v0b8XQzwztePfp+u9vWmUg5EmcdWIu1Qtkjj1FARhq35JJJkBKUIZ
	 FQacrIhh4fl7EA2BqQ0komBDOS5rzXrmvVAcJRlILE6/XPonKcSGhAC1SAx+Kk0RUe
	 4+FlblQ0FIB2Q7CHhDhx2e1zj2n05wKx6/Ohn3sQMcNGp1aNL1NueV7AiHQ6Ikwg5W
	 5ynUdRSuTFzGszi60T7HJNFrobQCjt6wnSx7Y3zwVgf1Jy1zX31xfF1mLcme8XPjKz
	 DngAowhRFxYGC3tUMof9gvdlujlb2MY8q8cN53kmmZ+YxpxpBVfJv7pbWAelOxdEXt
	 0zFWkJrTl5wiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD8DC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629603368.13197.16619899112846416323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41beda1384e33cf212a4b340ffaaf13c056c63e4304fa8463a63ba480627d5d2
Date: Sun, 09 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786296033
