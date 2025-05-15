Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315F820D517
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747329594; cv=none; b=tKRgFLMtxZG6L8Uj0g4Q8DDr0fUnqV2c1Teo7mhGLFqD8AzQaNiYrzs3CnTBkR5gzI9ROf4LXFmkfID4tWrO7acZ1UbHCBB8BYughpMMEd1W+X3uOulr+vUl3EdTjWtYJQNYBMsrSxdpyS5YHPXiby+9yPQgHbOWqNimIlexAyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747329594; c=relaxed/simple;
	bh=x1susBmJPKyXB2d61GBtvPXAAITFMdNV1NOAij8AT9g=;
	h=To:Subject:From:Message-Id:Date; b=c412TL4NVAjJ8mlCY9Cdm7uvxNCvXrJs6ck8wnHOKxXtftLcwzRJhw2mwDDSY5JU7wBZRVX5B6wUmTxlY1zz2GFCt8rcpWjK+AFQ8VUXqH8F2bHyEdby6HrrS7fRju4FKM3nBpGB3yn/ji0WhqrxlVUHybP7kNFjZuvz7Q+lM04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8yHhsKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8yHhsKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6D7C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747329593;
	bh=x1susBmJPKyXB2d61GBtvPXAAITFMdNV1NOAij8AT9g=;
	h=To:Subject:From:Date:From;
	b=Q8yHhsKClw1RzKDjxr2EQuL/Ev7GGxPtvgucgp/kvUEbRqUe1XCh0KY0Z4HTfYtoe
	 BKMl0xW/mxDRbVjmoWLUap3YMgUGnh8WDaSAlIJE7+d6TlIHGEPLXGDe8rZwZEBPGf
	 I/M6B002o5sJMXLnfPOPl5KEQEQrGYb7o+fpxDlagqIjROrkDtSb64Vl3r/r6JUh/V
	 Z7R0By2Q2H00tLtWfsysVMgSI7FpNdgAbfslwlsSgJi0b0OW0dcCIMAR87OdD3YQdp
	 gdX0pRqOh2lAV5zf9Mrb/Iu1+nLsVtzWW++bunWfgwC6Csr1JyvX7U/aIGv/KTYeze
	 V5+jtP1VbSTXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9BFC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732959357.31125.1637383442989780150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026abe4741c646e620210b7fe7bf018ecaf385c7d0bc2c6294240398f2e91871
Date: Thu, 15 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747329593
