Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D30E269823
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744974594; cv=none; b=ZAvg8YnT+sFRGmPmzBM+PlAk731KqXLTvbqm/rpje79UF7dsGwqiKjxb4mGHIDG5fzd0olN9CzYQXeQNZPx55BzBR+SugRrrPUtZ57vctNXrju521djEbzcGVao4RPlglGLa8Mw1mNq2Xr4O0jrWQmFDoZZHJ0osIq0o2njeS4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744974594; c=relaxed/simple;
	bh=/ieNgJg9uGH/NiQp/ehzkX/KLgcJrWmdu5PAXZWkILM=;
	h=To:Subject:From:Message-Id:Date; b=T1rk+pW6LtdHIpDYuykUJ5rxab1dPkgj/EdK7ngZPk/3hkF00W4DXAjkhylMGk3wHlxyLKclnRk1ApzPtJHlh7/bnBiCDnuF5iwcG4VLzFdQFSPcgIxbg3ZxYvD0lpbywva8/B8HuXLIP/qNrFSttb92/BjO7760+leXhCW9E1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5MirFmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5MirFmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0143C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744974593;
	bh=/ieNgJg9uGH/NiQp/ehzkX/KLgcJrWmdu5PAXZWkILM=;
	h=To:Subject:From:Date:From;
	b=O5MirFmPgCrPohErdXY+wGrruxcnrKtynyqhSDu2DEfqsuJZjFsacR/R26D7efV7p
	 Cpx8QXY3a7yFoWGVxmpNjTeA1sY006Rc50UymOwX/+ZuUcPCqOAmj4l1A+j2RrtE4E
	 7NfX1a6SApTkPEz0jneuMYjv5DMaG7tyTOR4WbCzknQ2KAbrw9liiPgmXV9XxMWXgI
	 tH4mmdlOD3oZjRq3w4atUHB6pb23dEi1ZQyhOxbyw4ITQMwsX7ell0SLi3Ik1VDw2e
	 WJ7c39m1aBX7x9wDDRqD0YAsM4SPIvoFm1qIzywKlE9WAxqxmJ/Ahe1bCMf/2UKrOi
	 1AhtmfvuZEiTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F8FC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497459363.16890.3155928828463557754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6539c74cbde532bbe19fd3912c53c25f49bb4e1c77611d4a46fdc8398ba32382
Date: Fri, 18 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744974593
