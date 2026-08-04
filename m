Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4405B3F3285
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785836434; cv=none; b=nDTXnvrLS1t5U+raIzGRmmg0duOoaLqTzwxAwc/N5YqMa1/Un+MAQ4oNZ+b9pVkHxnTU3cVAqMAdC5DhR/T3Y0NKY0bQ2dj8htCxJX+6defWeep6Wlm9Gk4NcsBvX8sHBXIjDuEsX/YuR5gxIx+dpOjCjC3pbXPQidJXrgjpnAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785836434; c=relaxed/simple;
	bh=y5sBYlcroGq+F4G9c/S2ql4shz6nnVyvQavf/7TsSNk=;
	h=To:Subject:From:Message-Id:Date; b=IyyQeE1CVCA7fjrLiLZBEFxhUBe8TVIotLgqzicSEEAFtp2sUqr9SpnUtC8umrdjK5pSjIrkmyLnSKJ58UhtHVkpzOR5hWiR0QzLdow74RC/DcXdB96VNeAVBhYsDzTgwT/EFZ5rImQ06vKShTDns82dnc42wWt1SzWRLbUxMa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/T3X6qI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/T3X6qI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF903C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785836433;
	bh=y5sBYlcroGq+F4G9c/S2ql4shz6nnVyvQavf/7TsSNk=;
	h=To:Subject:From:Date:From;
	b=C/T3X6qIfS1FzJDGeWHRiYH+HdljGaXojWomSK+UZBIBymkZxCfUFd0E2/Tb6R5vN
	 fLUFObQWaD3SbBmRQ41yw0jq9/2LZZiWz4DCkWySQ9HZB7zAVtqNflLaFClFjMVKRh
	 ARjZrOVcPLZdg+mFtYCZeTfDcSNqz90RPme7l2qj3HveUgJimJHO1+QILwQvKMCDuj
	 8D3m+Ru0Q9zRSrHKoBpGIxSavdlAP5RvDau/MBx7X7/t/I7TmhsCfk+Oirv8K6GqU3
	 toMtduzia7z1HiMZ+5C998rc/zTaFWiUEgGlCsLvx44LA9z71YNTm80XYkQDfqPSQ6
	 rj+ie8c9W2ncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1A0C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583643369.16769.3449031928722573289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd00c44ed012346e2e205d661571e305ea2e654073b37d32360019903fb0e37
Date: Tue, 04 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785836433
